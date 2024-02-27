.class public Lr0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/d$b;,
        Lr0/d$a;
    }
.end annotation


# instance fields
.field public final a:Ls0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls0/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/a;

    sget-object v1, Ls0/e;->a:Ls0/e;

    const-string v2, "flutter/keyevent"

    invoke-direct {v0, p1, v2, v1}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    iput-object v0, p0, Lr0/d;->a:Ls0/a;

    return-void
.end method

.method public static synthetic a(Lr0/d$a;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lr0/d;->d(Lr0/d$a;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Lr0/d$a;)Ls0/a$e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/d$a;",
            ")",
            "Ls0/a$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr0/c;

    invoke-direct {v0, p0}, Lr0/c;-><init>(Lr0/d$a;)V

    return-object v0
.end method

.method private c(Lr0/d$b;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/d$b;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_a

    const-string p2, "keyup"

    goto :goto_c

    :cond_a
    const-string p2, "keydown"

    :goto_c
    const-string v1, "type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "keymap"

    const-string v1, "android"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "flags"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "plainCodePoint"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "codePoint"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "keyCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "scanCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "metaState"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->b:Ljava/lang/Character;

    if-eqz p2, :cond_80

    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "character"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "source"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "deviceId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lr0/d$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "repeatCount"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic d(Lr0/d$a;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    :try_start_3
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "handled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b} :catch_d

    move v0, p1

    goto :goto_24

    :catch_d
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unpack JSON message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyEventChannel"

    invoke-static {v1, p1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    invoke-interface {p0, v0}, Lr0/d$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public e(Lr0/d$b;ZLr0/d$a;)V
    .registers 5

    iget-object v0, p0, Lr0/d;->a:Ls0/a;

    invoke-direct {p0, p1, p2}, Lr0/d;->c(Lr0/d$b;Z)Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Lr0/d;->b(Lr0/d$a;)Ls0/a$e;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ls0/a;->d(Ljava/lang/Object;Ls0/a$e;)V

    return-void
.end method
