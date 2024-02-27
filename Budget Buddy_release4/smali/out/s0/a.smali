.class public final Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/a$b;,
        Ls0/a$c;,
        Ls0/a$e;,
        Ls0/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ls0/c;

.field private final b:Ljava/lang/String;

.field private final c:Ls0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ls0/c$c;


# direct methods
.method public constructor <init>(Ls0/c;Ljava/lang/String;Ls0/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/c;",
            "Ljava/lang/String;",
            "Ls0/h<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;Ls0/c$c;)V

    return-void
.end method

.method public constructor <init>(Ls0/c;Ljava/lang/String;Ls0/h;Ls0/c$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/c;",
            "Ljava/lang/String;",
            "Ls0/h<",
            "TT;>;",
            "Ls0/c$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/a;->a:Ls0/c;

    iput-object p2, p0, Ls0/a;->b:Ljava/lang/String;

    iput-object p3, p0, Ls0/a;->c:Ls0/h;

    iput-object p4, p0, Ls0/a;->d:Ls0/c$c;

    return-void
.end method

.method static synthetic a(Ls0/a;)Ls0/h;
    .registers 1

    iget-object p0, p0, Ls0/a;->c:Ls0/h;

    return-object p0
.end method

.method static synthetic b(Ls0/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ls0/a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ls0/a;->d(Ljava/lang/Object;Ls0/a$e;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ls0/a$e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls0/a$e<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ls0/a;->a:Ls0/c;

    iget-object v1, p0, Ls0/a;->b:Ljava/lang/String;

    iget-object v2, p0, Ls0/a;->c:Ls0/h;

    invoke-interface {v2, p1}, Ls0/h;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p2, :cond_e

    goto :goto_14

    :cond_e
    new-instance v3, Ls0/a$c;

    invoke-direct {v3, p0, p2, v2}, Ls0/a$c;-><init>(Ls0/a;Ls0/a$e;Ls0/a$a;)V

    move-object v2, v3

    :goto_14
    invoke-interface {v0, v1, p1, v2}, Ls0/c;->g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V

    return-void
.end method

.method public e(Ls0/a$d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/a$d<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ls0/a;->d:Ls0/c$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ls0/a;->a:Ls0/c;

    iget-object v2, p0, Ls0/a;->b:Ljava/lang/String;

    if-nez p1, :cond_c

    goto :goto_12

    :cond_c
    new-instance v3, Ls0/a$b;

    invoke-direct {v3, p0, p1, v1}, Ls0/a$b;-><init>(Ls0/a;Ls0/a$d;Ls0/a$a;)V

    move-object v1, v3

    :goto_12
    iget-object p1, p0, Ls0/a;->d:Ls0/c$c;

    invoke-interface {v0, v2, v1, p1}, Ls0/c;->c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V

    goto :goto_28

    :cond_18
    iget-object v0, p0, Ls0/a;->a:Ls0/c;

    iget-object v2, p0, Ls0/a;->b:Ljava/lang/String;

    if-nez p1, :cond_1f

    goto :goto_25

    :cond_1f
    new-instance v3, Ls0/a$b;

    invoke-direct {v3, p0, p1, v1}, Ls0/a$b;-><init>(Ls0/a;Ls0/a$d;Ls0/a$a;)V

    move-object v1, v3

    :goto_25
    invoke-interface {v0, v2, v1}, Ls0/c;->e(Ljava/lang/String;Ls0/c$a;)V

    :goto_28
    return-void
.end method
