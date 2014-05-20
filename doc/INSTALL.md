# Installing the Oracle driver

The oracle database driver needs to be available before any of these tools can
function.  Sometimes this can be a bit tricky.

## Fetching requirements from Oracle

The oracle db client needs to be installed before the driver.  That can be
fetched from Oracle's OTN.  You need to accept the agreement, but you don't need
to register.

  http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html

If you only want to install the minimum to support perl's oracle driver, then
you are probably best fetching the Instant Client; you need both 'basiclite' and
'devel'.

## Installing on Debian

* apt-get install libstdc++5
* apt-get install oracle-instantclient-basiclite oracle-instantclient-devel
* ORACLE_HOME=/usr/lib/oracle/10.2.0.5/client64 cpanm DBD::Oracle
