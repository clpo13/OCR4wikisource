INSTALL
=======

On Debian or Ubuntu, just run the below command

```bash
bash ./setup.sh
```

or

```bash
chmod +x setup.sh && ./setup.sh
```

This will install all the required packages.

Requires Python 2 for now.

# API Setup
 * Create a new project for this tool to access your Google drive
    * Visit https://console.developers.google.com/ , create project, name it anything you like, ex: gdcmdtools.

 * Enable the following Google APIs in "APIs & auth/APIs"
    * Drive API
       * Fusion Tables API

 * Make sure your application has an application name in "APIs & auth/Consent screen"
    * Find "PRODUCT NAME" field. Make sure it's not blank.

 * Grant access to Google Drive for gdcmdtools in "APIs & auth/Credentials"
    1. Click "Create new Client ID", APPLICATION TYPE: Installed application, INSTALLED APPLICATION TYPE: Other
    1. Check the section "Client ID for native application", click at the "Download JSON".
    1. Execute gdauth.py in a terminal and give the downloaded secret file just downloaded as parameter: $ gdauth.py client_secrets.json
    1. You will see message like: INFO:gdcmdtools.base:Please visit the URL in your browser: https://accounts.google.com/o/oauth2/auth?scope=....
    1. Visit the URL with browser and allow the app accessing your Google Drive.
    1. Copy the code you see in your browser, then back to the terminal, paste the code and hit enter.
    1. Done, you won't be asked for the code again unless the credential expired.

## gdauth
Use the tool to pass the OAuth2 authentication

### Usage
<pre>
usage: gdauth.py [-h] [-r {local,oob}] secret_file

gdauth v0.0.1 - Google Drive OAuth2 authentication tool - gdcmdtools (Google Drive command line tools)

positional arguments:
  secret_file           the secret file in JSON format, ~/.gdcmdtools.secrets will be overwritten

optional arguments:
  -h, --help            show this help message and exit
    -r {local,oob}, --redirect_uri {local,oob}
                            specify the redirect URI for the oauth2 flow, could be:
			                            local: means "http://localhost"
						                            oob: (default) means "urn:ietf:wg:oauth:2.0:oob"
									    </pre>

### Examples for gdauth
    % gdauth.py /tmp/client_secrets.json   # Use the /tmp/client_secrets.json as secret file



That' all.

You can see this demo video in Tamil with English Subtitles to setup the gdcmdtools.
https://www.youtube.com/watch?v=PH9TnD67oj4&feature=youtu.be


