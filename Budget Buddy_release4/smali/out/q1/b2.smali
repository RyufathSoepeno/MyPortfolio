.class Lq1/b2;
.super Lq1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/a<",
        "La1/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc1/g;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lq1/a;-><init>(Lc1/g;ZZ)V

    return-void
.end method


# virtual methods
.method protected R(Ljava/lang/Throwable;)Z
    .registers 3

    invoke-virtual {p0}, Lq1/a;->getContext()Lc1/g;

    move-result-object v0

    invoke-static {v0, p1}, Lq1/g0;->a(Lc1/g;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
