#!/bin/bash
rm ./templates.tar.gz
tar --exclude=*.less --exclude=*.sh --exclude="_source" -czf ./templates.tar.gz ./_fonts/ ./MoLight/