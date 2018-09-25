const fs = require('fs')
const fileData = fs.readFileSync('layout.txt', 'utf-8')
const layoutCharCode = '.'.charCodeAt(0)

// DOSBox Layout: Rows [25] Columns [80]

function pipe(...funcs) {
  return (x) => funcs.reduce((x, f) => f(x), x)
}

function lines(text) {
  return text.split('\n')
}

function charMap(lines) {
  return lines
    .map((line, y) => line.split('')
      .map((char, x) => ({ x, y, charCode: char.charCodeAt(0) }))
      .filter(({ charCode }) => charCode !== layoutCharCode))
    .reduce((result, chars) => result.concat(chars), [])
}

function toAsm(characterMap) {
  return characterMap
    .map(({ x, y, charCode }) => {
      const moveCur = `mov ah,02h\nmov dh,${y}\nmov dl,${x}\nint 10h`
      const putChar = `mov dx,${charCode}\nmov ah,02h\nint 21h`

      return `${moveCur}\n\n${putChar}`
    })
    .join('\n\n')
}

const layoutAsm = pipe(lines, charMap, toAsm)

console.log(layoutAsm(fileData))