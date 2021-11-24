import asyncio
import requests as r

async def work():
  while True:
    await asyncio.sleep(1)
    req = r.get('https://patchbay.pub/rep')
    if req.text == 'EXIT':
        import sys
        sys.exit()
    print(req.text)

loop = asyncio.get_event_loop()
try:
  asyncio.ensure_future(work())
  loop.run_forever()
except KeyboardInterrupt:
  pass
finally:
  print("Closing Loop")
  loop.close()
