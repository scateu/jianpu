\version "2.12.2"
#(set-global-staff-size 20)

% un-comment the next line to remove Lilypond tagline:
% \header { tagline="" }

\paper {
  print-all-headers = ##t % allow per-score headers

  % un-comment the next line for A5:
  % #(set-default-paper-size "a5" )

  % un-comment the next line for no page numbers:
  % print-page-number = ##f

  % un-comment the next 3 lines for a binding edge:
  % two-sided = ##t
  % inner-margin = 20\mm
  % outer-margin = 10\mm

  % un-comment the next line for a more space-saving header layout:
  % scoreTitleMarkup = \markup { \center-column { \fill-line { \magnify #1.5 { \bold { \fromproperty #'header:dedication } } \magnify #1.5 { \bold { \fromproperty #'header:title } } \fromproperty #'header:composer } \fill-line { \fromproperty #'header:instrument \fromproperty #'header:subtitle \smaller{\fromproperty #'header:subsubtitle } } } }
}

\score {
<< \override Score.BarNumber #'break-visibility = #end-of-line-invisible
\set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)

% === BEGIN JIANPU STAFF ===
    \new RhythmicStaff \with {
    \remove Staff_symbol_engraver
    \consists "Accidental_engraver"
    }
    { \new Voice="jianpu" {
    \override Staff.TimeSignature #'style = #'numbered
    \override Staff.Stem #'transparent = ##t
    \override Stem #'direction = #DOWN
    \override Stem #'length-fraction = #0.5
    \override Beam #'beam-thickness = #0.1
    \override Beam #'length-fraction = #0.5
    \override Voice.Rest #'style = #'neomensural % this size tends to line up better (we'll override the appearance)
    \override Accidental #'font-size = #-4
    \override Tie #'staff-position = #2.5
    \override TupletBracket #'bracket-visibility = ##t
    \tupletUp

\mark \markup{1=F}
\repeat volta 2 {
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 #(define (note-one grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "1")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c''4[^. ~ 
#(define (note-dashone grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c''4
#(define (note-seven grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "7")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8
#(define (note-six grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "6")))))))
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
#(define (note-three grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "3")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
#(define (note-five grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "5")))))))
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 #(define (note-dashsix grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-three
e'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8.
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-one
c''16]^.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
#(define (note-two grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "2")))))))
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-two
d'4[ ~ 
#(define (note-dashtwo grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashtwo
d'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 #(define (note-dashfive grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashfive
g'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashfive
g'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4[ ~ 
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
)
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4.[
(
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-one
c''8]^.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4.[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-one
c'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-two
d'4.[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
)
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4[ ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashfive
g'4]
#(define (note-nought grob grob-origin context)
  (if (grob::has-interface grob 'rest-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "0")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-nought
r4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4[
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c''4^.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-seven
b'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8.[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-six
a'16]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-three
e'4[ ~ 
#(define (note-dashthree grob grob-origin context)
  (if (grob::has-interface grob 'note-head-interface)
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashthree
e'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-nought
r4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a4[-\tweak #'Y-offset #-1.2 -\tweak #'X-offset #0.6 _. ~ 
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-nought
r4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g4[-\tweak #'Y-offset #-1.2 -\tweak #'X-offset #0.6 _. ~ 
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashfive
g4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4.[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-three
e'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-one
c''8]^.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4.[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-seven
b'16[
\set stemLeftBeamCount = #2
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-two
d''16^.
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-nought
r4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-nought
r4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a4[-\tweak #'Y-offset #-1.2 -\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-seven
b16-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #2
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-two
d'16
)
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-one
c'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4.[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c''4[^. ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c''4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4.[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-one
c''8]^.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-three
e'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-one
c''16]^.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g4[-\tweak #'Y-offset #-1.2 -\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-nought
r4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a4[-\tweak #'Y-offset #-1.2 -\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-seven
b16-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #2
\set stemRightBeamCount = #2
\applyOutput #'Voice #note-two
d'16
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8]-\tweak #'X-offset #0.6 _.
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-one
c'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8[
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-seven
b8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g8[-\tweak #'X-offset #0.6 _.
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-six
a8]-\tweak #'X-offset #0.6 _.
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-two
d'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
}
\alternative { {
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4]
} {
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-one
c'4[ ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashone
c'4]
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-five
g'4[
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-three
e'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-five
g'8
(
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
\applyOutput #'Voice #note-three
e'8]
)
\applyOutput #'Voice #note-five
g'4
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[ ~ 
\>
(
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4]
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-six
a'4[ ~ 
)
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 \set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4 ~ 
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #0
\applyOutput #'Voice #note-dashsix
a'4]
\!
\pp
}}
\bar "|."
} }
% === END JIANPU STAFF ===

>>
\header{
title="晴雯歌(二胡I)"
}
\layout{} }
\score {
\unfoldRepeats
<< 

% === BEGIN MIDI STAFF ===
    \new Staff { \new Voice="midi" {
\transpose c f {
\repeat volta 2 {
c''4 ~ 
c''4
b'8
a'8
e'8
g'8
a'4 ~ 
a'4 ~ 
a'4 ~ 
a'4
e'4
a'8.
c''16
a'8
(
g'8
e'8
d'8
)
e'8
g'8
d'4 ~ 
d'4
d'8
e'8
g'4 ~ 
g'4 ~ 
g'4
e'8
d'8
e'8
(
g'8
c'4 ~ 
)
c'4
g'8
(
a'8
)
b8
(
a8
d'8
e'8
)
g8
(
a8
b8
d'8
)
a'4 ~ 
a'4 ~ 
a'4
g'8
(
a'8
)
b8
(
a8
d'8
e'8
)
g8
(
a8
d'8
e'8
)
c'4 ~ 
c'4 ~ 
c'4 ~ 
c'4
a'4.
(
c''8
)
a'8
(
g'8
e'8
d'8
)
c'4.
e'8
d'8
e'8
c'8
b8
a'4
e'8
g'8
d'4.
e'8
d'8
(
e'8
b8
a8
)
g'4 ~ 
g'4
r4
d'8
(
e'8
g'4
)
e'8
(
g'8
a'4
)
c''4
b'4
a'4
g'8.
a'16
g'8
d'8
e'4 ~ 
e'4
r4
b8
(
d'8
a4 ~ 
)
a4
r4
b8
(
d'8
g4 ~ 
)
g4
c'4.
d'8
e'4
a'8
c''8
g'4.
a'8
b'8
a'8
b'16
d''16
b'8
a'4 ~ 
a'4 ~ 
a'4 ~ 
a'4
r4
d'8
(
e'8
)
g'4
g'4
r4
e'8
(
g'8
)
c'4
g8
(
a'8
)
b8
(
a8
d'8
e'8
)
g8
(
a8
b8
d'8
)
a4
b16
d'16
)
b'8
a8
(
c'8
)
g8
(
a8
)
b8
(
a8
d'8
e'8
)
g8
(
a8
d'8
e'8
)
c'4.
d'8
e'8
g'8
b'8
a'8
c''4 ~ 
c''4
b'8
a'8
e'8
g'8
a'4.
c''8
a'8
g'8
e'8
d'8
e'4
a'8.
(
c''16
)
a'8
(
g'8
e'8
d'8
)
e'8
g'8
d'8
g'8
e'8
(
d'8
b'8
a'8
)
g4
d'8
e'8
g'4
g'4
r4
e'8
g'8
c'4
g8
(
a8
)
b8
(
a8
)
d'8
(
e'8
)
g8
(
a8
)
d'8
(
e'8
)
a4
b16
(
d'16
b8
)
a8
(
c'8
)
g'8
(
a'8
)
b8
(
a8
d'8
e'8
)
g8
(
a8
d'8
e'8
)
}
\alternative { {
c'4 ~ 
c'4 ~ 
c'4 ~ 
c'4
} {
c'4 ~ 
c'4 ~ 
c'4 ~ 
c'4
g'4
e'4
g'8
(
e'8
)
g'4
a'4 ~ 
\>
(
a'4 ~ 
a'4 ~ 
a'4
a'4 ~ 
)
a'4 ~ 
a'4 ~ 
a'4
\!
\pp
}}
}
} }
% === END MIDI STAFF ===

>>
\header{
title="晴雯歌(二胡I)"
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 84 4)}} }
