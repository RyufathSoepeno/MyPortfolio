.class public final Lq1/q;
.super Lq1/o1;
.source "SourceFile"


# instance fields
.field public final i:Lq1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq1/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq1/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/m<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lq1/o1;-><init>()V

    iput-object p1, p0, Lq1/q;->i:Lq1/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq1/q;->y(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public y(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lq1/q;->i:Lq1/m;

    invoke-virtual {p0}, Lq1/s1;->z()Lq1/t1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq1/m;->v(Lq1/m1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq1/m;->E(Ljava/lang/Throwable;)V

    return-void
.end method
