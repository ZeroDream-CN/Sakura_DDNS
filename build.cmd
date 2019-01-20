@echo off
title SakuraDDNS build

echo Building Windows x64...
set CGO_ENABLED=0
set GOOS=windows
set GOARCH=amd64
go build -o=SakuraDDNS_windows_amd64.exe

echo Building Windows x32...
set CGO_ENABLED=0
set GOOS=windows
set GOARCH=386
go build -o=SakuraDDNS_windows_386.exe

echo Building Linux x64...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=amd64
go build -o=SakuraDDNS_linux_amd64

echo Building Linux x32...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=386
go build -o=SakuraDDNS_linux_386

echo Building Linux arm...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=arm
go build -o=SakuraDDNS_linux_arm

echo Building Linux mips x64...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=mips64
set GOMIPS=softfloat
go build -o=SakuraDDNS_linux_mips64

echo Building Linux mips x32...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=mips
set GOMIPS=softfloat
go build -o=SakuraDDNS_linux_mips

echo Building Linux mipsle x64...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=mips64le
set GOMIPS=softfloat
go build -o=SakuraDDNS_linux_mips64le

echo Building Linux mipsle x32...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=mipsle
set GOMIPS=softfloat
go build -o=SakuraDDNS_linux_mipsle

echo Building FreeBSD x64...
set CGO_ENABLED=0
set GOOS=freebsd
set GOARCH=amd64
go build -o=SakuraDDNS_freebsd_amd64

echo Building FreeBSD x32...
set CGO_ENABLED=0
set GOOS=freebsd
set GOARCH=386
go build -o=SakuraDDNS_freebsd_386

echo Building Darwin x64...
set CGO_ENABLED=0
set GOOS=darwin
set GOARCH=amd64
go build -o=SakuraDDNS_darwin_amd64

echo Building Darwin x32...
set CGO_ENABLED=0
set GOOS=darwin
set GOARCH=386
go build -o=SakuraDDNS_darwin_386

echo Build complated.
