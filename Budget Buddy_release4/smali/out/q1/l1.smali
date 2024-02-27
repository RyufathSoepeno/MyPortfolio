.class final Lq1/l1;
.super Lq1/s1;
.source "SourceFile"


# instance fields
.field private final i:Lj1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/l<",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj1/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lq1/s1;-><init>()V

    iput-object p1, p0, Lq1/l1;->i:Lj1/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq1/l1;->y(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public y(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lq1/l1;->i:Lj1/l;

    invoke-interface {v0, p1}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
