---
UID: <% tp.date.now("YYYYMMDDHHmmss")%>
notes:
---
## After_All_This_Time


---
## Duty


---
## Life


---
## Health
-  睡觉 [startTime:: 12:30]  [endTime:: 13:00]
-  睡觉 [startTime:: 03:00]  [endTime:: 09:00]

---
##

```ad-flex
> [!infobox|noicon]-  当天创建的文件
> ```dataviewjs 
const filename=dv.current().file.name;
dv.list(dv.pages().where(p => p.file.cday.toISODate() === filename).sort(p => p.file.ctime, 'desc').file.link) 
>```
```