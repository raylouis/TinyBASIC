100 PRINT "Think of a number"
101 INPUT S
200 GOSUB 750
201 LET A=1+(R-(R/20*20))
205 GOSUB 750
206 LET B=1+(R-(R/20*20))
207 IF B=A THEN GOTO 205
208 GOSUB 750
209 LET H=1+(R-(R/20*20))
210 GOSUB 750
211 LET I=1+(R-(R/20*20))
212 IF I=H THEN GOTO 210
213 GOSUB 750
214 LET W=1+(R-(R/20*20))
220 GOSUB 750
221 LET C=1+(R-(R/20*20))
222 IF C<>A THEN IF C<>B THEN IF C<>H THEN IF C<>I THEN IF C<>W THEN GOTO 230
223 GOTO 220
230 PRINT "You enter the caves to Hunt the Wumpus!"
500 PRINT "You are in room ",C
501 LET P=C
502 GOSUB 900
503 PRINT "Exits are ",E,",",F,",",G
504 GOSUB 600
510 PRINT "1:Move or 2:Shoot?"
511 INPUT M
512 IF M<1 THEN GOTO 510
513 IF M>2 THEN GOTO 510
514 IF M=1 THEN GOSUB 700
515 IF M=2 THEN GOSUB 800
516 GOTO 500
600 IF D<>H THEN IF D<>I THEN GOTO 610
601 PRINT "You fall down a bottomless hole into the abyss!"
602 END
610 IF D<>W THEN GOTO 620
611 PRINT "You stumble upon the wumpus!"
612 GOSUB 670
613 PRINT "The wumpus runs away!"
620 IF D<>A THEN IF D<>B THEN GOTO 630
621 PRINT "A bat swoops down and picks you up..."
622 GOSUB 680
623 PRINT "...and drops you down."
630 IF E<>H THEN IF F<>H THEN IF G<>H THEN IF E<>I THEN IF F<>I THEN IF G<>I THEN GOTO 640
631 PRINT "You feel a cold wind blowing from a nearby cavern."
640 IF E<>W THEN IF F<>W THEN IF G<>W THEN GOTO 650
641 PRINT "You smell something terrible nearby."
650 IF E<>A THEN IF F<>A THEN IF G<>A THEN IF E<>B THEN IF F<>B THEN IF G<>B THEN GOTO 660
651 PRINT "You hear a loud squeaking and a flapping of wings."
660 RETURN
670 GOSUB 750
671 LET R=R-(R/4*4)
672 IF R=1 THEN LET W=E
673 IF R=2 THEN LET W=F
674 IF R=3 THEN LET W=G
675 IF W<>C THEN RETURN
676 PRINT "The wumpus eats you!"
677 END
680 GOSUB 750
681 LET R=R-(R/4*4)
682 IF R=0 THEN RETURN
683 LET P=C
684 GOSUB 900
685 IF R=1 THEN LET D=E
686 IF R=2 THEN LET D=F
687 IF R=3 THEN LET D=G
688 PRINT "...moves you to ",D,"..."
689 IF A=C THEN LET A=D
690 IF B=C THEN LET B=D
691 LET C=D
692 GOTO 680
700 PRINT "Where?"
701 INPUT D
702 IF D<>E THEN IF D<>F THEN IF D<>G THEN GOTO 700
703 PRINT "You move to room ",D
704 LET C=D
705 RETURN
750 LET S=32767-S*13
751 LET R=S/2
752 IF R<0 THEN LET R=-R
753 RETURN
800 PRINT "Shoot how far (1-5)?"
801 INPUT N
802 IF N<1 THEN GOTO 800
803 IF N>5 THEN GOTO 800
805 LET P=C
810 GOSUB 900
811 PRINT "You can shoot into rooms ",E,",",F,",",G
815 PRINT "Shoot where?"
816 INPUT P
817 IF P<>E THEN IF P<>F THEN IF P<>G THEN GOTO 815
818 IF P=W THEN GOTO 830
819 LET N=N-1
820 IF N>1 THEN GOTO 810
821 PRINT "The arrow startles the wumpus."
822 LET P=W
823 GOSUB 900
824 GOSUB 670
825 RETURN
830 PRINT "You hit the wumpus!"
831 END
900 IF P>=1 THEN IF P<=20 THEN GOTO 900+4*P
901 PRINT "Illegal position ",P
902 END
904 LET E=2
905 LET F=5
906 LET G=8
907 RETURN
908 LET E=1
909 LET F=3
910 LET G=10
911 RETURN
912 LET E=2
913 LET F=4
914 LET G=12
915 RETURN
916 LET E=3
917 LET F=5
918 LET G=14
919 RETURN
920 LET E=1
921 LET F=4
922 LET G=6
923 RETURN
924 LET E=5
925 LET F=7
926 LET G=15
927 RETURN
928 LET E=6
929 LET F=8
930 LET G=17
931 RETURN
932 LET E=1
933 LET F=7
934 LET G=11
935 RETURN
936 LET E=10
937 LET F=11
938 LET G=12
939 RETURN
940 LET E=2
941 LET F=9
942 LET G=11
943 RETURN
944 LET E=8
945 LET F=10
946 LET G=20
947 RETURN
948 LET E=3
949 LET F=9
950 LET G=13
951 RETURN
952 LET E=12
953 LET F=14
954 LET G=18
955 RETURN
956 LET E=4
957 LET F=13
958 LET G=15
959 RETURN
960 LET E=6
961 LET F=14
962 LET G=16
963 RETURN
964 LET E=15
965 LET F=17
966 LET G=18
967 RETURN
968 LET E=7
969 LET F=16
970 LET G=20
971 RETURN
972 LET E=13
973 LET F=16
974 LET G=19
975 RETURN
976 LET E=9
977 LET F=18
978 LET G=20
979 RETURN
980 LET E=11
981 LET F=17
982 LET G=19
983 RETURN
