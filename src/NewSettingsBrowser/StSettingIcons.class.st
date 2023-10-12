Class {
	#name : 'StSettingIcons',
	#superclass : 'Object',
	#classVars : [
		'icons'
	],
	#category : 'NewSettingsBrowser-IconProvider',
	#package : 'NewSettingsBrowser',
	#tag : 'IconProvider'
}

{ #category : 'accessing - icons' }
StSettingIcons class >> appearanceIcon [
	"Private - Generated method"
	^ self icons
		at: #appearanceIcon
		ifAbsentPut: [ Form fromBinaryStream: self appearanceIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> appearanceIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/appearance.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAABKklEQVRIx2P8/5+BIsBEmfYhacD9m5PkLhQhCfwnCfRshui6fQsmwoIw6lPQ5Nf4bT+dtzEMwvpXwbAWwwWHvxHrjd5AhC40AzgM8Glk9WNgYGDgMEH2FEmB+HsThwkRscBhiGzDn3fBXfgMxe+C5F5H+TdryyCcng/YlLDg0+/nv9mfQQ3CPvya0Z80F/B1rd/sz8CwZQUDAwPDqxYbEezKcLjgx3UJ4Y9BDAwMDD4RDAyF+qLVuOzBaoD5KQYG9ZWvrj1IZGAQT5dPOspgfoqBgaGLwRyLYlLSAQMDhwmBdPDjApqGFWjyZ/B4gfMl8yxUyb9pDAwMDOii4vI4vPD/////fO74XcDAsMcZVQeBpPwjgoEAQDdAhpAGBh5ULuNoqTxqwKAwAADQeOKwtkdFrwAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMBDbPMgAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDBhhoR0AAAAKHRFWHRkYXRlOnRpbWVzdGFtcAAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwNpOlqwAAAABJRU5ErkJggg=='
]

{ #category : 'accessing - icons' }
StSettingIcons class >> compilerIcon [
	"Private - Generated method"
	^ self icons
		at: #compilerIcon
		ifAbsentPut: [ Form fromBinaryStream: self compilerIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> compilerIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/compiler.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAACmUlEQVRIx+2VW0hUYRDHf0eEiDBqNylbBQsqwnqRCCXxVpbXxDsSick+JKWg4QXBRSF8iAqk8oKKueBDWlaUZPZgL9aTRWZ2saDsYmu1olgpW04PZ1fP6q4XfG3gMPPNN/8/M3P+8CkirM7EyZonlkY0T2oRinMHe7a+GKkyuoKVNTqiAMPAJ7cdBPgs3UGAQYvwXFhQGLEY/GLPojsI8IHqz5AVA6YxyC+A/EIwWSErBaqH5nfgcgRDpEoeWGX3Z1VvCF84gguC7Bzwj4boRgjMUL/oBvBPguzMZRBoz8Ntt23D7ZpE5woIOoLnNtVxYJkExiLtgre02H2zNmssXYRgzhLsVGWjqk8oFREJPqcz6oym2Lk6Dy1365Rf1HOzGk/vU73vI+35cbFOZ23sCVEURVGU7kyNDn4FRipqaWmO1Ir8tTrrpTK0MrQuTY1Dz0P4D+iKmR2hywug/P7vj0d8wJD6vl2kvnQOnpek+pkQ++QADOpFELE9S28BGMxQL699BbhQIyLSn1Db1H/UvbD37ldEvO99jz0ZXuOttDnS44aDyX2XjckNN9SzooRXuYI/LANEeoMA8npnhtQOJrKCUmDXVYvFsR+/dncdHB5HZHR89weATRveeIh0DKhXx33/TMz+q9biXIBenSPRVAFgNomgLqSu8E48QHwybDa9SzzRA8fqtbroKwA4VSIiw2GZsKPH8s0upC8bt2dDaMRkXMg4FI69CtalQcqoLcJZWraXejOITCdC+nWZ0irRWvkA4O4VGakoB+i85UqdTgTzpfx6vd4ftuVCWMnPKNfyXpRAZKb7dByYz4hb05uhKBXcECxtejPAzreXnkw+deQ8WYHdXDdhObR2jZc2p6z2ZfJYHfw/AcA/8R4Byi8QZMoAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDAQ2zzIAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwYYaEdAAAACh0RVh0ZGF0ZTp0aW1lc3RhbXAAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMDaTpasAAAAASUVORK5CYII='
]

{ #category : 'accessing' }
StSettingIcons class >> icons [
	^ icons ifNil: [ icons := Dictionary new ]
]

{ #category : 'InspectorExtensions' }
StSettingIcons class >> inspectionIcons [
	<inspectorPresentationOrder: 0 title: 'icons'>
	<script: 'self inspect'>
	^ SpTablePresenter new
		  addColumn: (SpImageTableColumn title: 'Icon' evaluated: #value);
		  addColumn: (SpStringTableColumn title: 'Name' evaluated: #key);
		  items:
			  ((self class selectorsInCategory: 'accessing - icons') sorted
				   collect: [ :each | each -> (self perform: each) ]);
		  yourself
]

{ #category : 'accessing - icons' }
StSettingIcons class >> networkIcon [
	"Private - Generated method"
	^ self icons
		at: #networkIcon
		ifAbsentPut: [ Form fromBinaryStream: self networkIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> networkIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/network.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAABhklEQVRIx2P8/5+BIsBEmfbhbMD/SUuvWL1lhAOrt0uv/J+EXSkmCG80xW5so+n/cHTFGAZ87JF1gSgXm1gSCGGVVIoth7BkXT724DXgewNEoULJ1cT//2Fp5P////+vliu0Q3jfG5B1oIWBxycGBgaGMKb7ESxbdp9ZfBIiunLpfgXWNffdwngRarCGwVUBBgYGBuUu3GGuPJmBgYHhqgAOL8R9JS7q4r7iMEBqGQMDA4Mod5PpqeQ/D1DD4P//C1adl6X0GBgYGKSW4TAAovzqQXQRBP/8JHQRFmSn6a65HMLAoG3PwGAVa7FW47n0eoj4CpNnBjcsTj+40ApThyMQe12IC4NeFxxe+NYBUVAob8yMqc1EvwTqpW8dOBPSNAOIkkspmGFwKQTCm2aANylnTIQoC959JxZhwB3X4HkQdsZEAnnh///Jebh9PzkPXTW23Pj/7crIi5iaIy++XYmplhFnofrgVPueJRcvfeAQ+KGv5xJjVsmggE0Z42ipPGrAoDAAAHW//hE9hnRrAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwENs8yAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMGGGhHQAAAAodEVYdGRhdGU6dGltZXN0YW1wADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDA2k6WrAAAAFHRFWHRzdmc6dGl0bGUAQXJ0Ym9hcmQgNmGXswcAAAAASUVORK5CYII='
]

{ #category : 'accessing - icons' }
StSettingIcons class >> refactoringIcon [
	"Private - Generated method"
	^ self icons
		at: #refactoringIcon
		ifAbsentPut: [ Form fromBinaryStream: self refactoringIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> refactoringIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/refactoring.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAADDElEQVRIx92Ua0jTURiHn/+2pl3ULEZW25ijWakZ0bCLJWaFJKRUTimKahIZlGgYlFHRBQoKijILtAukZBeCJJIuaFYmZUl0sSLoalmRoZayidvpw1q79G8T+tbvfDm393nfc973HNoViU6qkVd1orNdIQJKlTDsgyJ8qzJcGe2oZ4WyG8AxmFoAR9O9jARNK0E14jvMKgS4tlOIazu85yFwBBKAJe5N3fitb8J6Y6ZES8dE7t3XjkwAw6xzT8ERtbFe1zd90sRtquLgwciodre7l9TZbJON4Iaq2ZB88mFb1yaA+QU1kYPUqRUAxosgxNusV6E1uhOtXysg5V1NcegpPx+RR2HaGPdoudV9cqfG9w4eW4wzIKT04zrPHACbs02GU2FTm0wGk8FkmPwhOa2hXA4ghBB5iyH0vO2bDyC+ByyHPBFJCa5FOYAQWSZIP+ADSCoBq12Z50Eo11htkHRYDtA3XLoJ71Z6AYqm6DvKcsyj9B3uZh5dlq3vKJoqB7APydaBoWFTlBBCSCFae+v+mEEn5RLYs7zwZYjW9t53tuHHjDCArPJzuUDVvMBVUJX+Z/XdXT903cLuX3UgRGfx45S+2m7t58XGvb7GqtQJNyKe7/p0QdnbJQdXhy8Uv07YqlauhPlqR6W/t7nJQQrVtS26wTWqW+QPADBXw7J4aQ48iBHiwe+SM18ChatbX1J+BWbnpJyXcxL3VNeo3z7htTGjren2rbb7xgxdo65R1xj3xCtJfWPZB4+a5SIIJMmz5Xha7tXQgi/2sFKfDRKU1PzNfO08nzJZ0gsDN7Qs8Y9AmwVp691G+Vvcd+fUgMqbVzkgouVIbCwLpu15G+OV0vzEs52rx9HRbgGIGJ8aO1nrlwWP6kojuwAkZ/zS7FW2MwCaIpjZ9mfunBrkf7w7iZnh6rMAt4YA5Fuiqo4Wxo+MqnK1UafNurIcfWfRdIJ9ma47SDoIVpvPa82z9rhecXCAHV48k1970dIPQEFmv+vgb7o+5/LE3gq5FfXS9Ef9AASW4t/M/wvAT9c8ztFh2/b2AAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwENs8yAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMGGGhHQAAAAodEVYdGRhdGU6dGltZXN0YW1wADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDA2k6WrAAAAG3RFWHRzdmc6dGl0bGUAMDQ2IC0gUmVmYWN0b3JpbmcKS+BOAAAAAElFTkSuQmCC'
]

{ #category : 'accessing - reset' }
StSettingIcons class >> resetIcons [
	<script>
	^ icons := nil
]

{ #category : 'accessing - icons' }
StSettingIcons class >> shortcutsIcon [
	"Private - Generated method"
	^ self icons
		at: #shortcutsIcon
		ifAbsentPut: [ Form fromBinaryStream: self shortcutsIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> shortcutsIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/shortcuts.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAACJUlEQVRIx+2UT0jTYRjHPxMZVGh2aNLGIDDNQRZC8yKMxCTo5GFDz8EOCQ0UArXYqRAUA+nQyWQiks5JE1xmyWIgHvRSa1ho4h+sgaJTqVDCb4ef4gx38pAHn9PD9/u8H573eV5ek8SxIut4x08gYGfXGa6ty1xeW+cM7+weknQoohMAGyEdGRshgOhEunbiZvAfAHtD7A9Vmi3L6bq9rjoyVW64U+XVEfuh3ViWK839IUlCknzNmfCDs9LgbCbX12wAEgDutuECR2IgCeD3ON3BLlsDOBolRyPYGoJdTrffAzCQdCSGC9xtAEogrQcBRjxVrnR6x4ivxbgigK+lYyTdrXKNeADWg0jxboDFwHZTWeF+gbdEK73WA0CvVSvekn23rHC7aTEAEO9GipUCpFolqd4PEAhL0ljnAWCsU5ICYYB6vySlWgFipUjjXoC1HmPiM9PJoJGNpnUwajW0ZHBm2sjWegDGvdlgGQJYnbsAwJViio1G59PeyH6e787fU1bnACxDWWBrB5h88++Soo1H50YY9bZ2kwRna3/35eS5+koa7N9znuzeSS3NP//oiD6FWyXRTxXXP8Sh4tGN6csP8uxZb7ceL1njz2I1W6kzNb9eIUmRokxPZcEsLZgzuZEiyWQMafP8u5mpF19e/tj5edVUndtm+3btojNyW9kugD+x96bJu59Xlgs2H+r1ua+XzMX3bt6vKszdANPpr3wKOBGAv4wmQReou+eFAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwENs8yAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMGGGhHQAAAAodEVYdGRhdGU6dGltZXN0YW1wADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDA2k6WrAAAAAElFTkSuQmCC'
]

{ #category : 'accessing - icons' }
StSettingIcons class >> systemIcon [
	"Private - Generated method"
	^ self icons
		at: #systemIcon
		ifAbsentPut: [ Form fromBinaryStream: self systemIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> systemIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/system.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAACMklEQVRIx+1VMWgTURj+LjRt0kFpqISCk71U6GKcbCBoSQzFSjt0aCmhmw6SkDqlUhEE6dIMlnTQ6iQZQiuBDqU0OmhAAxZbNIhWsYEWipmMmGKuhcvvcL2+d693eCpufsu9933//73//ffenUSEv4LDgk9KB0Dyjwyqffro2wW7BpWx5ebA4gpQCFxa8z7S6RNNfZX8DLC40hwYW0bliAMREZG6Ke9r82M7ZuscT2hPeV/dJAMODGqmaWao7ZgaEG0s2UnfWCIBTbq0JfOB7jdXnwbfAy+6H0bqfsZvyafNe0DkmWZcKs6vkYozxTMtVgCiVWV2O15mQclJMSg5ydR4eXZ7VTEYiDXV86JBPW9VN5HJQXKpv2YYHIC3ZKQ+fxCDRMaQoRXy4zVj5K6Gi99AwyV3MbX9/M206TmIzHBBuWJC54uJ9hxTzk0Bpx7Unt2fcEQX1gwG1Y9i4R2RjojItbXxs3vgDCZsfRdC3DInBxq5Q4MvGTvpAHA2rI9uXK6FaPewgrk0ADhjqajzyGl1fA/GnC4AmEsTPX9rEFk/17O3LqpeIqJ31+581fWeu/q2z6TXo0RE6oKFAQ8lpOvXnf4rLbe1cf+r8pNP3QMebdYy5X8cq1oYEA2O+CSfNDhCRDQ/ataN+VHDa7RGaciqoaUh07sgorXoLgBAz0udCfYDgLvQWrTsgRF7neO9CojCWQAIZ4kUjPfuddrcAkNm2Cf5pMwwz0n/6s/03+A38BPGhlECM17p2gAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMBDbPMgAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDBhhoR0AAAAKHRFWHRkYXRlOnRpbWVzdGFtcAAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwNpOlqwAAAABJRU5ErkJggg=='
]

{ #category : 'accessing - icons' }
StSettingIcons class >> taskitIcon [
	"Private - Generated method"
	^ self icons
		at: #taskitIcon
		ifAbsentPut: [ Form fromBinaryStream: self taskitIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> taskitIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/taskit.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAAAKUlEQVRIx2NgGAWjYBSMglEwCgYTYGx4doCRIgP+/6fMBUyUemEYGAAA150EMMaN5WAAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDAQ2zzIAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwYYaEdAAAACh0RVh0ZGF0ZTp0aW1lc3RhbXAAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMDaTpasAAAAASUVORK5CYII='
]

{ #category : 'accessing - icons' }
StSettingIcons class >> texteditorIcon [
	"Private - Generated method"
	^ self icons
		at: #texteditorIcon
		ifAbsentPut: [ Form fromBinaryStream: self texteditorIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> texteditorIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/texteditor.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAABH0lEQVRIx2P8/5+BIsACoV5b77Z/eo+BgYFBWsn1oOhRXMqxqPv/////FV6oylZ4/ccKsKlj+P8fmyf+hWAzAFMdTgOIBf//M1EWhPBARAfW27CJHvXCYYB49supyILi2YZdU5zRlebsvYOhjgESC2+vmbcjhM3b317D7i5MddBA/P////9vXBDhb1xIwdqMSmOqI2AAQgy3ATgC8WH9yhvhGgzdaHxsALsLiBejOB0MagN+Z934CGHd+Pg7i4ABr63X50NY6/NfW0NYAupGrBCWEauAOk51uMsDVDFc6hj//2dgYGREd9i/EMbVjxpW3oDxwzXkGrCpGxblAcP/////i2ejiolnYy9UsanDUR5gNwCbOkZKK5ZBnRdGjAEAasFJbnw/MWcAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDAQ2zzIAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwYYaEdAAAACh0RVh0ZGF0ZTp0aW1lc3RhbXAAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMDaTpasAAAAASUVORK5CYII='
]

{ #category : 'accessing - icons' }
StSettingIcons class >> toolsIcon [
	"Private - Generated method"
	^ self icons
		at: #toolsIcon
		ifAbsentPut: [ Form fromBinaryStream: self toolsIconContents base64Decoded asByteArray readStream ]
]

{ #category : 'private - contents' }
StSettingIcons class >> toolsIconContents [
	"Private - Method generated with the content of the file File @ /Users/mvs/git_projects/WORK/INRIA/images/pharo-images/setting-browser/icons/manual/tools.png"
	^ 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgEAAAAAAGgflrAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0T//xSrMc0AAAAHdElNRQfnCgwRLCDYSKSiAAACN0lEQVRIx+2UT2gTQRTGX3vQHhJv3mKkIoFKEMUUDyKsCOrRhCC91KBgRU9qBQkGLUIOIgiN/yiJSqMoYkU9NFW8+AdNK1FziJVKCNVULYSk4rYhoZLPw2Z2Z2Z3a4pXv9PsvPf9dt6bt0vgVB97v+rTPbSo+XxhACBjg3S5To9OLW0uZw4GiIgenOIAaRdx2hvCtLV5Zs7PZwrctOulETk0amWfGyZRwMaxrZl6VAs3DgQaRqy83gx45eDdE4eJ1V7Y3GzN1w3XWPj2U9neuBT8adjPjgBkNO/hCiC3kudfbhPtlbvuLUZ00wwgAIj6M2J572q8fXyI7Ser3N0BF7+TjUIfcIwlxtax3Y8XeCwBgOK3Q3gmVB/QiAWL2rO3Z+G6WJZ2jdVwD9mqMuzu0lZ95/Fabqs+B7+DycnAc59zR/zMG8Vn2P1RtrrVYTUXBEtFcpqpN6tXPmSdaQMAUmWi3c2R7Tq3pu75rG5fFqASd69tfhWT7BTZby0DxvXKe+t8QxOZvwJuOH79iHXold+JvJVmo4QT9oCjoZNGqje8cB8AUrPSbHxRFUuA6vSEjbS+R0izSPGqPBvZkgmQjYop+4v80RZjiluMJ3ICILFLfkf+imk2XkjdmEe/BjgS2ieGum/WCpazMS11Y1bdSUB3XNw+vge2Kg6aPhX+f0BENJLHklocVFazXIcZkH+GFhR5QkTkLDVP8DipmTu9tUordgBITWmebdU2uYTlqv3f7P8BRER/AKlKx+vmGXukAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIzLTEwLTEyVDE3OjQ0OjMyKzAwOjAwENs8yAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMy0xMC0xMlQxNzo0NDozMiswMDowMGGGhHQAAAAodEVYdGRhdGU6dGltZXN0YW1wADIwMjMtMTAtMTJUMTc6NDQ6MzIrMDA6MDA2k6WrAAAAAElFTkSuQmCC'
]
