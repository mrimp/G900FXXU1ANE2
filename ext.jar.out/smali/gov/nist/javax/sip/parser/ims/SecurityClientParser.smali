.class public Lgov/nist/javax/sip/parser/ims/SecurityClientParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityClientParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v2, "SecuriryClient parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_enter(Ljava/lang/String;)V

    const/16 v2, 0x85a

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->headerName(I)V

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ims/SecurityClientList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SecuriryClient parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v2

    const-string v3, "SecuriryClient parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
