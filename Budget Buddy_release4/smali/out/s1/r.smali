.class public Ls1/r;
.super Ls1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lj1/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/l<",
            "-TE;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ls1/a;-><init>(Lj1/l;)V

    return-void
.end method


# virtual methods
.method protected final r()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final s()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
