<?php
namespace Szurubooru\FormData;

class UserEditFormData implements \Szurubooru\IValidatable
{
	public $userName;
	public $email;
	public $password;
	public $accessRank;
	public $avatarStyle;
	public $avatarContent;
	public $browsingSettings;

	public function __construct($inputReader = null)
	{
		if ($inputReader !== null)
		{
			$this->userName = $inputReader->userName;
			$this->email = $inputReader->email;
			$this->password = $inputReader->password;
			if ($inputReader->accessRank !== null)
				$this->accessRank = \Szurubooru\Helpers\EnumHelper::accessRankFromString($inputReader->accessRank);
			if ($inputReader->avatarStyle !== null)
				$this->avatarStyle = \Szurubooru\Helpers\EnumHelper::avatarStyleFromString($inputReader->avatarStyle);
			$this->avatarContent = $inputReader->decodeBase64($inputReader->avatarContent);
			$this->browsingSettings = $inputReader->browsingSettings;
		}
	}

	public function validate(\Szurubooru\Validator $validator)
	{
		if ($this->userName !== null)
			$validator->validateUserName($this->userName);

		if ($this->password !== null)
			$validator->validatePassword($this->password);

		if ($this->email !== null)
			$validator->validateEmail($this->email);

		if (strlen($this->avatarContent) > 1024 * 512)
			throw new \DomainException('Avatar content must have at most 512 kilobytes.');

		if ($this->avatarContent)
		{
			$avatarContentMimeType = \Szurubooru\Helpers\MimeHelper::getMimeTypeFromBuffer($this->avatarContent);
			if (!\Szurubooru\Helpers\MimeHelper::isImage($avatarContentMimeType))
				throw new \DomainException('Avatar must be an image (detected: ' . $avatarContentMimeType . ').');
		}

		if ($this->browsingSettings !== null)
		{
			if (!is_string($this->browsingSettings))
				throw new \InvalidArgumentException('Browsing settings must be stringified JSON.');
			else if (strlen($this->browsingSettings) > 2000)
				throw new \InvalidArgumentException('Stringified browsing settings can have at most 2000 characters.');
		}
	}
}
