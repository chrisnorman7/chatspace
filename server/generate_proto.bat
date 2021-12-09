@echo off
protoc --dart_out=lib\src proto\*.proto
protoc --dart_out=..\client\lib proto\*.proto
