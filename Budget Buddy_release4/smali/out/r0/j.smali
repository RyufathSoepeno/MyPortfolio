.class public Lr0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/j$e;,
        Lr0/j$d;,
        Lr0/j$j;,
        Lr0/j$c;,
        Lr0/j$k;,
        Lr0/j$l;,
        Lr0/j$f;,
        Lr0/j$g;,
        Lr0/j$i;,
        Lr0/j$h;
    }
.end annotation


# instance fields
.field public final a:Ls0/j;

.field private b:Lr0/j$h;

.field final c:Ls0/j$c;


# direct methods
.method public constructor <init>(Lf0/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/j$a;

    invoke-direct {v0, p0}, Lr0/j$a;-><init>(Lr0/j;)V

    iput-object v0, p0, Lr0/j;->c:Ls0/j$c;

    new-instance v1, Ls0/j;

    sget-object v2, Ls0/f;->a:Ls0/f;

    const-string v3, "flutter/platform"

    invoke-direct {v1, p1, v3, v2}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    iput-object v1, p0, Lr0/j;->a:Ls0/j;

    invoke-virtual {v1, v0}, Ls0/j;->e(Ls0/j$c;)V

    return-void
.end method

.method static synthetic a(Lr0/j;)Lr0/j$h;
    .registers 1

    iget-object p0, p0, Lr0/j;->b:Lr0/j$h;

    return-object p0
.end method

.method static synthetic b(Lr0/j;Lorg/json/JSONArray;)I
    .registers 2

    invoke-direct {p0, p1}, Lr0/j;->h(Lorg/json/JSONArray;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lr0/j;Lorg/json/JSONObject;)Lr0/j$c;
    .registers 2

    invoke-direct {p0, p1}, Lr0/j;->g(Lorg/json/JSONObject;)Lr0/j$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lr0/j;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lr0/j;->k(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lr0/j;Ljava/lang/String;)Lr0/j$k;
    .registers 2

    invoke-direct {p0, p1}, Lr0/j;->j(Ljava/lang/String;)Lr0/j$k;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lr0/j;Lorg/json/JSONObject;)Lr0/j$j;
    .registers 2

    invoke-direct {p0, p1}, Lr0/j;->i(Lorg/json/JSONObject;)Lr0/j$j;

    move-result-object p0

    return-object p0
.end method

.method private g(Lorg/json/JSONObject;)Lr0/j$c;
    .registers 4

    const-string v0, "primaryColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_b
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lr0/j$c;

    invoke-direct {v1, v0, p1}, Lr0/j$c;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private h(Lorg/json/JSONArray;)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v4, :cond_38

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lr0/j$f;->a(Ljava/lang/String;)Lr0/j$f;

    move-result-object v4

    sget-object v8, Lr0/j$b;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    if-eq v4, v7, :cond_30

    if-eq v4, v6, :cond_2d

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2a

    if-eq v4, v5, :cond_27

    goto :goto_32

    :cond_27
    or-int/lit8 v2, v2, 0x8

    goto :goto_32

    :cond_2a
    or-int/lit8 v2, v2, 0x2

    goto :goto_32

    :cond_2d
    or-int/lit8 v2, v2, 0x4

    goto :goto_32

    :cond_30
    or-int/lit8 v2, v2, 0x1

    :goto_32
    if-nez v3, :cond_35

    move v3, v2

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_38
    if-eqz v2, :cond_57

    const/16 p1, 0x9

    const/16 v1, 0x8

    packed-switch v2, :pswitch_data_5a

    goto :goto_53

    :pswitch_42
    const/16 p1, 0xd

    return p1

    :pswitch_45
    return v6

    :pswitch_46
    const/16 p1, 0xb

    return p1

    :pswitch_49
    return v1

    :pswitch_4a
    const/16 p1, 0xc

    :pswitch_4c
    return p1

    :pswitch_4d
    if-eq v3, v6, :cond_56

    if-eq v3, v5, :cond_55

    if-eq v3, v1, :cond_54

    :goto_53
    return v7

    :cond_54
    return v1

    :cond_55
    return p1

    :cond_56
    :pswitch_56
    return v0

    :cond_57
    const/4 p1, -0x1

    return p1

    nop

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_56
        :pswitch_4d
        :pswitch_4c
        :pswitch_4a
        :pswitch_4d
        :pswitch_4d
        :pswitch_49
        :pswitch_4d
        :pswitch_46
        :pswitch_45
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_42
    .end packed-switch
.end method

.method private i(Lorg/json/JSONObject;)Lr0/j$j;
    .registers 13

    const-string v0, "statusBarColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_14

    :cond_13
    move-object v4, v2

    :goto_14
    const-string v0, "statusBarIconBrightness"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0/j$d;->a(Ljava/lang/String;)Lr0/j$d;

    move-result-object v0

    move-object v5, v0

    goto :goto_27

    :cond_26
    move-object v5, v2

    :goto_27
    const-string v0, "systemStatusBarContrastEnforced"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v6, v0

    goto :goto_3a

    :cond_39
    move-object v6, v2

    :goto_3a
    const-string v0, "systemNavigationBarColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    goto :goto_4d

    :cond_4c
    move-object v7, v2

    :goto_4d
    const-string v0, "systemNavigationBarIconBrightness"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0/j$d;->a(Ljava/lang/String;)Lr0/j$d;

    move-result-object v0

    move-object v8, v0

    goto :goto_60

    :cond_5f
    move-object v8, v2

    :goto_60
    const-string v0, "systemNavigationBarDividerColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_73

    :cond_72
    move-object v9, v2

    :goto_73
    const-string v0, "systemNavigationBarContrastEnforced"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_83
    move-object v10, v2

    new-instance p1, Lr0/j$j;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lr0/j$j;-><init>(Ljava/lang/Integer;Lr0/j$d;Ljava/lang/Boolean;Ljava/lang/Integer;Lr0/j$d;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method private j(Ljava/lang/String;)Lr0/j$k;
    .registers 3

    invoke-static {p1}, Lr0/j$k;->a(Ljava/lang/String;)Lr0/j$k;

    move-result-object p1

    sget-object v0, Lr0/j$b;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    sget-object p1, Lr0/j$k;->i:Lr0/j$k;

    return-object p1

    :cond_1b
    sget-object p1, Lr0/j$k;->i:Lr0/j$k;

    return-object p1

    :cond_1e
    sget-object p1, Lr0/j$k;->h:Lr0/j$k;

    return-object p1

    :cond_21
    sget-object p1, Lr0/j$k;->g:Lr0/j$k;

    return-object p1

    :cond_24
    sget-object p1, Lr0/j$k;->f:Lr0/j$k;

    return-object p1
.end method

.method private k(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lr0/j$l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr0/j$l;->a(Ljava/lang/String;)Lr0/j$l;

    move-result-object v2

    sget-object v3, Lr0/j$b;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_26

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    goto :goto_2b

    :cond_23
    sget-object v2, Lr0/j$l;->g:Lr0/j$l;

    goto :goto_28

    :cond_26
    sget-object v2, Lr0/j$l;->f:Lr0/j$l;

    :goto_28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2e
    return-object v0
.end method


# virtual methods
.method public l(Lr0/j$h;)V
    .registers 2

    iput-object p1, p0, Lr0/j;->b:Lr0/j$h;

    return-void
.end method

.method public m(Z)V
    .registers 5

    const-string v0, "PlatformChannel"

    const-string v1, "Sending \'systemUIChange\' message."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/j;->a:Ls0/j;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "SystemChrome.systemUIChange"

    invoke-virtual {v0, v1, p1}, Ls0/j;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
