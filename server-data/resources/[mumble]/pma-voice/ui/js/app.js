;(function (e) {
  function o(o) {
    for (
      var t, a, r = o[0], d = o[1], l = o[2], s = 0, b = [];
      s < r.length;
      s++
    )
      (a = r[s]),
        Object.prototype.hasOwnProperty.call(i, a) && i[a] && b.push(i[a][0]),
        (i[a] = 0)
    for (t in d) Object.prototype.hasOwnProperty.call(d, t) && (e[t] = d[t])
    u && u(o)
    while (b.length) b.shift()()
    return c.push.apply(c, l || []), n()
  }
  function n() {
    for (var e, o = 0; o < c.length; o++) {
      for (var n = c[o], t = !0, r = 1; r < n.length; r++) {
        var d = n[r]
        0 !== i[d] && (t = !1)
      }
      t && (c.splice(o--, 1), (e = a((a.s = n[0]))))
    }
    return e
  }
  var t = {},
    i = { app: 0 },
    c = []
  function a(o) {
    if (t[o]) return t[o].exports
    var n = (t[o] = { i: o, l: !1, exports: {} })
    return e[o].call(n.exports, n, n.exports, a), (n.l = !0), n.exports
  }
  ;(a.m = e),
    (a.c = t),
    (a.d = function (e, o, n) {
      a.o(e, o) || Object.defineProperty(e, o, { enumerable: !0, get: n })
    }),
    (a.r = function (e) {
      'undefined' !== typeof Symbol &&
        Symbol.toStringTag &&
        Object.defineProperty(e, Symbol.toStringTag, { value: 'Module' }),
        Object.defineProperty(e, '__esModule', { value: !0 })
    }),
    (a.t = function (e, o) {
      if ((1 & o && (e = a(e)), 8 & o)) return e
      if (4 & o && 'object' === typeof e && e && e.__esModule) return e
      var n = Object.create(null)
      if (
        (a.r(n),
        Object.defineProperty(n, 'default', { enumerable: !0, value: e }),
        2 & o && 'string' != typeof e)
      )
        for (var t in e)
          a.d(
            n,
            t,
            function (o) {
              return e[o]
            }.bind(null, t),
          )
      return n
    }),
    (a.n = function (e) {
      var o =
        e && e.__esModule
          ? function () {
              return e['default']
            }
          : function () {
              return e
            }
      return a.d(o, 'a', o), o
    }),
    (a.o = function (e, o) {
      return Object.prototype.hasOwnProperty.call(e, o)
    }),
    (a.p = '')
  var r = (window['webpackJsonp'] = window['webpackJsonp'] || []),
    d = r.push.bind(r)
  ;(r.push = o), (r = r.slice())
  for (var l = 0; l < r.length; l++) o(r[l])
  var u = d
  c.push([0, 'chunk-vendors']), n()
})({
  0: function (e, o, n) {
    e.exports = n('56d7')
  },
  '0154': function (e, o, n) {},
  '56d7': function (e, o, n) {
    'use strict'
    n.r(o)
    var t = n('7edb')
    const i = Object(t['d'])(
        'audio',
        { id: 'audio_on', src: 'mic_click_on.ogg' },
        null,
        -1,
      ),
      c = Object(t['d'])(
        'audio',
        { id: 'audio_off', src: 'mic_click_off.ogg' },
        null,
        -1,
      ),
      a = { key: 0, class: 'voiceInfo' }
    function r(e, o, n, r, d, l) {
      return (
        Object(t['f'])(),
        Object(t['c'])('body', null, [
          i,
          c,
          r.voice.uiEnabled
            ? (Object(t['f'])(),
              Object(t['c'])('div', a, [
                0 !== r.voice.callInfo
                  ? (Object(t['f'])(),
                    Object(t['c'])(
                      'p',
                      {
                        key: 0,
                        class: Object(t['e'])({ talking: r.voice.talking }),
                      },
                      ' [Call] ',
                      2,
                    ))
                  : Object(t['b'])('', !0),
                r.voice.radioEnabled && 0 !== r.voice.radioChannel
                  ? (Object(t['f'])(),
                    Object(t['c'])(
                      'p',
                      {
                        key: 1,
                        class: Object(t['e'])({ talking: r.voice.usingRadio }),
                      },
                      Object(t['h'])(r.voice.radioChannel) + ' Mhz [Radio] ',
                      3,
                    ))
                  : Object(t['b'])('', !0),
                r.voice.voiceModes.length
                  ? (Object(t['f'])(),
                    Object(t['c'])(
                      'p',
                      {
                        key: 2,
                        class: Object(t['e'])([{ talking: r.voice.talking }, r.voice.voiceModes[r.voice.voiceMode][1]]),
                      },
                      Object(t['h'])(r.voice.voiceModes[r.voice.voiceMode][1]) + '',
                      3,
                    ))
                  : Object(t['b'])('', !0),
              ]))
            : Object(t['b'])('', !0),
        ])
      )
    }
    var d = {
        name: 'App',
        setup() {
          const e = Object(t['g'])({
            uiEnabled: !0,
            voiceModes: [],
            voiceMode: 0,
            radioChannel: 0,
            radioEnabled: !0,
            usingRadio: !1,
            callInfo: 0,
            talking: !1,
          })
          return (
            window.addEventListener('message', function (o) {
              const n = o.data
              if (
                (void 0 !== n.uiEnabled && (e.uiEnabled = n.uiEnabled),
                void 0 !== n.voiceModes)
              ) {
                e.voiceModes = JSON.parse(n.voiceModes)
                let o = [...e.voiceModes]
                o.push([0, 'Custom']), (e.voiceModes = o)
              }
              if (
                (void 0 !== n.voiceMode && (e.voiceMode = n.voiceMode),
                void 0 !== n.radioChannel && (e.radioChannel = n.radioChannel),
                void 0 !== n.radioEnabled && (e.radioEnabled = n.radioEnabled),
                void 0 !== n.callInfo && (e.callInfo = n.callInfo),
                void 0 !== n.usingRadio &&
                  n.usingRadio !== e.usingRadio &&
                  (e.usingRadio = n.usingRadio),
                void 0 === n.talking || e.usingRadio || (e.talking = n.talking),
                n.sound && e.radioEnabled && 0 !== e.radioChannel)
              ) {
                let e = document.getElementById(n.sound)
                e.load(), (e.volume = n.volume), e.play().catch((e) => {})
              }
            }),
            fetch(`https://${GetParentResourceName()}/uiReady`, {
              method: 'POST',
            }),
            { voice: e }
          )
        },
      },
      l = (n('9253'), n('85dd')),
      u = n.n(l)
    const s = u()(d, [['render', r]])
    var b = s
    Object(t['a'])(b).mount('#app')
  },
  9253: function (e, o, n) {
    'use strict'
    n('0154')
  },
})
//# sourceMappingURL=app.js.map