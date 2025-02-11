{ callPackage, lib, stdenv, fetchurl, ... }@_args:

let
  base = callPackage ./generic.nix (_args // {
    version = "8.2.0";
    hash = "sha256-G/T8pmP5PZ4LSQm9bq4Fg6HOOD5/Bd8Sbyjycvof1Ro=";
  });

in
base.withExtensions ({ all, ... }: with all; ([
  bcmath
  calendar
  curl
  ctype
  dom
  exif
  fileinfo
  filter
  ftp
  gd
  gettext
  gmp
  iconv
  imap
  intl
  ldap
  mbstring
  mysqli
  mysqlnd
  opcache
  openssl
  pcntl
  pdo
  pdo_mysql
  pdo_odbc
  pdo_pgsql
  pdo_sqlite
  pgsql
  posix
  readline
  session
  simplexml
  sockets
  soap
  sodium
  sysvsem
  sqlite3
  tokenizer
  xmlreader
  xmlwriter
  zip
  zlib
]))
