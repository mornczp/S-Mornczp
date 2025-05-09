---
UID: 20240328194559 
aliases: 
tags: 
source: 
cssclass: 
created: 2024-03-28
---

## 激活专业版
- 源码片段
	- 
		```
		async verify(){ let deviceId = ""; 
		if(Platform.isDesktop) deviceId = await getDesktopId(); 
		else { 
		const deviceInfo = await window.Capacitor.Plugins.Device.getId(); 
		deviceId = deviceInfo.identifier || deviceInfo.uuid; } 
		return await 
		checkVerification(this.settings.tokenForVerify[deviceId]); 
		} 
		
		async function checkVerification(token) { 
		if(!token) return setVerifyState(null), false; 
		// 进行验证，示例化简 
		// 假设根据token检查验证状态... 
		// 设置验证状态 
		return true; // 假设验证成功 
		}
		```
- 修改
	- 
		```
		async verify(){ // 直接设置验证状态为成功，不执行任何验证逻辑 
		at.setVerifyState({ verified: true }); 
		return true; // 假设验证总是成功的 }
		```
  



