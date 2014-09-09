<?php
namespace Szurubooru\Services;

class AuthService
{
	private $loggedInUser = null;
	private $loginToken = null;

	private $config;
	private $passwordService;
	private $timeService;
	private $userService;
	private $tokenService;

	public function __construct(
		\Szurubooru\Config $config,
		\Szurubooru\Services\PasswordService $passwordService,
		\Szurubooru\Services\TimeService $timeService,
		\Szurubooru\Services\TokenService $tokenService,
		\Szurubooru\Services\UserService $userService)
	{
		$this->config = $config;
		$this->passwordService = $passwordService;
		$this->timeService = $timeService;
		$this->tokenService = $tokenService;
		$this->userService = $userService;

		$this->loggedInUser = $this->getAnonymousUser();
	}

	public function isLoggedIn()
	{
		return $this->loginToken !== null;
	}

	public function getLoggedInUser()
	{
		return $this->loggedInUser;
	}

	public function getLoginToken()
	{
		return $this->loginToken;
	}

	public function loginFromCredentials($formData)
	{
		$user = $this->userService->getByNameOrEmail($formData->userNameOrEmail);
		$this->doFinalChecksOnUser($user);

		$passwordHash = $this->passwordService->getHash($formData->password);
		if ($user->passwordHash !== $passwordHash)
			throw new \InvalidArgumentException('Specified password is invalid.');

		$this->loginToken = $this->createAndSaveLoginToken($user);
		$this->loggedInUser = $user;
		$this->userService->updateUserLastLoginTime($user);
	}

	public function loginFromToken(\Szurubooru\Entities\Token $token)
	{
		if ($token->purpose !== \Szurubooru\Entities\Token::PURPOSE_LOGIN)
			throw new \Exception('This token is not a login token.');

		$user = $this->userService->getById($token->additionalData);
		$this->doFinalChecksOnUser($user);

		$this->loginToken = $token;
		$this->loggedInUser = $user;
		$this->userService->updateUserLastLoginTime($this->loggedInUser);
	}

	public function getAnonymousUser()
	{
		$user = new \Szurubooru\Entities\User();
		$user->name = 'Anonymous user';
		$user->accessRank = \Szurubooru\Entities\User::ACCESS_RANK_ANONYMOUS;
		return $user;
	}

	public function loginAnonymous()
	{
		$this->loginToken = null;
		$this->loggedInUser = $this->getAnonymousUser();
	}

	public function logout()
	{
		if (!$this->isLoggedIn())
			throw new \Exception('Not logged in.');

		$this->tokenService->invalidateByName($this->loginToken);
		$this->loginToken = null;
	}

	private function createAndSaveLoginToken(\Szurubooru\Entities\User $user)
	{
		return $this->tokenService->createAndSaveToken($user->id, \Szurubooru\Entities\Token::PURPOSE_LOGIN);
	}

	private function doFinalChecksOnUser($user)
	{
		if (!$user->email and $this->config->security->needEmailActivationToRegister)
			throw new \DomainException('User didn\'t confirm mail yet.');
	}
}
