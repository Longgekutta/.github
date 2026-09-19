default:
    @just --list

setup:
    @echo "Setup OK"

run:
    @echo "Central GitHub config active"

test:
    @python -c "import os; assert os.path.exists('.github/workflows/reusable-ci.yml'); print('Test OK')"

health:
    @echo "OK"

clean:
    @echo "Clean OK"
