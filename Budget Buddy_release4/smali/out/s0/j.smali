.class public Ls0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/j$a;,
        Ls0/j$b;,
        Ls0/j$d;,
        Ls0/j$c;
    }
.end annotation


# instance fields
.field private final a:Ls0/c;

.field private final b:Ljava/lang/String;

.field private final c:Ls0/k;

.field private final d:Ls0/c$c;


# direct methods
.method public constructor <init>(Ls0/c;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ls0/q;->b:Ls0/q;

    invoke-direct {p0, p1, p2, v0}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    return-void
.end method

.method public constructor <init>(Ls0/c;Ljava/lang/String;Ls0/k;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;Ls0/c$c;)V

    return-void
.end method

.method public constructor <init>(Ls0/c;Ljava/lang/String;Ls0/k;Ls0/c$c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/j;->a:Ls0/c;

    iput-object p2, p0, Ls0/j;->b:Ljava/lang/String;

    iput-object p3, p0, Ls0/j;->c:Ls0/k;

    iput-object p4, p0, Ls0/j;->d:Ls0/c$c;

    return-void
.end method

.method static synthetic a(Ls0/j;)Ls0/k;
    .registers 1

    iget-object p0, p0, Ls0/j;->c:Ls0/k;

    return-object p0
.end method

.method static synthetic b(Ls0/j;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ls0/j;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ls0/j;->d(Ljava/lang/String;Ljava/lang/Object;Ls0/j$d;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Ls0/j$d;)V
    .registers 8

    iget-object v0, p0, Ls0/j;->a:Ls0/c;

    iget-object v1, p0, Ls0/j;->b:Ljava/lang/String;

    iget-object v2, p0, Ls0/j;->c:Ls0/k;

    new-instance v3, Ls0/i;

    invoke-direct {v3, p1, p2}, Ls0/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ls0/k;->d(Ls0/i;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p3, :cond_13

    const/4 p2, 0x0

    goto :goto_18

    :cond_13
    new-instance p2, Ls0/j$b;

    invoke-direct {p2, p0, p3}, Ls0/j$b;-><init>(Ls0/j;Ls0/j$d;)V

    :goto_18
    invoke-interface {v0, v1, p1, p2}, Ls0/c;->g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V

    return-void
.end method

.method public e(Ls0/j$c;)V
    .registers 5

    iget-object v0, p0, Ls0/j;->d:Ls0/c$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Ls0/j;->a:Ls0/c;

    iget-object v2, p0, Ls0/j;->b:Ljava/lang/String;

    if-nez p1, :cond_c

    goto :goto_11

    :cond_c
    new-instance v1, Ls0/j$a;

    invoke-direct {v1, p0, p1}, Ls0/j$a;-><init>(Ls0/j;Ls0/j$c;)V

    :goto_11
    iget-object p1, p0, Ls0/j;->d:Ls0/c$c;

    invoke-interface {v0, v2, v1, p1}, Ls0/c;->c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V

    goto :goto_26

    :cond_17
    iget-object v0, p0, Ls0/j;->a:Ls0/c;

    iget-object v2, p0, Ls0/j;->b:Ljava/lang/String;

    if-nez p1, :cond_1e

    goto :goto_23

    :cond_1e
    new-instance v1, Ls0/j$a;

    invoke-direct {v1, p0, p1}, Ls0/j$a;-><init>(Ls0/j;Ls0/j$c;)V

    :goto_23
    invoke-interface {v0, v2, v1}, Ls0/c;->e(Ljava/lang/String;Ls0/c$a;)V

    :goto_26
    return-void
.end method
