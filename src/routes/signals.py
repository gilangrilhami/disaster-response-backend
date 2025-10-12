from fastapi import APIRouter

signals = APIRouter(prefix="signals/", tags=["Signal"])


@signals.post("")
async def submit_signal(signal: dict):
    return {"message": "Signal submitted successfully", "signal": signal}
