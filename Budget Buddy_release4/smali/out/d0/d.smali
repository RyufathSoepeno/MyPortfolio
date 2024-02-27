.class public Ld0/d;
.super Ld0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/d$a;
    }
.end annotation


# instance fields
.field public final a:Ld0/d$a;

.field final b:Ls0/i;


# direct methods
.method public constructor <init>(Ls0/i;Ls0/j$d;)V
    .registers 3

    invoke-direct {p0}, Ld0/a;-><init>()V

    iput-object p1, p0, Ld0/d;->b:Ls0/i;

    new-instance p1, Ld0/d$a;

    invoke-direct {p1, p0, p2}, Ld0/d$a;-><init>(Ld0/d;Ls0/j$d;)V

    iput-object p1, p0, Ld0/d;->a:Ld0/d$a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Ld0/d;->b:Ls0/i;

    invoke-virtual {v0, p1}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld0/d;->b:Ls0/i;

    iget-object v0, v0, Ls0/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ld0/d;->b:Ls0/i;

    invoke-virtual {v0, p1}, Ls0/i;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public n()Ld0/f;
    .registers 2

    iget-object v0, p0, Ld0/d;->a:Ld0/d$a;

    return-object v0
.end method
