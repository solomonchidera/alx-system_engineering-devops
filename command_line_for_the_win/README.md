# SFTP Usage Guide

## Overview

SFTP (Secure File Transfer Protocol) is a secure and encrypted file transfer protocol that provides a secure way to transfer files between hosts over a network. This guide outlines basic SFTP commands and usage.

## Table of Contents

- [Connecting to SFTP Server](#connecting-to-sftp-server)
- [Navigating Remote Directory](#navigating-remote-directory)
- [Uploading Files](#uploading-files)
- [Downloading Files](#downloading-files)
- [Closing SFTP Session](#closing-sftp-session)

## Connecting to SFTP Server

To connect to an SFTP server, use the following command:

```bash
sftp username@hostname
```

Replace `username` with your SFTP username and `hostname` with the server's hostname or IP address. You will be prompted to enter your password.

## Navigating Remote Directory

Once connected, you can navigate through the remote directory using the following commands:

- Change remote directory: `cd remote_directory`
- Change local directory: `lcd local_directory`
- Print current remote directory: `pwd`
- List remote directory contents: `ls`

## Uploading Files

To upload files from the local machine to the remote server, use the following command:

```bash
put local_file [remote_path]
```

Replace `local_file` with the name of the local file you want to upload. Optionally, you can specify a `remote_path` to define the destination directory on the remote server.

## Downloading Files

To download files from the remote server to the local machine, use the following command:

```bash
get remote_file [local_path]
```

Replace `remote_file` with the name of the remote file you want to download. Optionally, you can specify a `local_path` to define the destination directory on the local machine.

## Closing SFTP Session

To close the SFTP session and disconnect from the server, use the following command:

```bash
exit
```

Alternatively, you can use the shortcut:

```bash
bye
```

## Conclusion

This guide provides basic commands for using SFTP to transfer files securely between a local machine and a remote server. Refer to the [official documentation](https://www.openssh.com/manual.html) for more advanced options and features.
