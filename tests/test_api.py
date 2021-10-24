
import pytest

from simpleapi.api import app

def test_status():
    """ simpleapi GET status """
    client = app.test_client()
    res = client.get('/status')
    assert b'status' in res.data
