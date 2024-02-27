.class public abstract Ld0/a;
.super Ld0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ld0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Ld0/a;->n()Ld0/f;

    move-result-object v0

    invoke-interface {v0, p1}, Ld0/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Ld0/a;->n()Ld0/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract n()Ld0/f;
.end method
