.class final Lq1/j1;
.super Lq1/i;
.source "SourceFile"


# instance fields
.field private final e:Lj1/l;
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

    invoke-direct {p0}, Lq1/i;-><init>()V

    iput-object p1, p0, Lq1/j1;->e:Lj1/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lq1/j1;->e:Lj1/l;

    invoke-interface {v0, p1}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq1/j1;->a(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvokeOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq1/j1;->e:Lj1/l;

    invoke-static {v1}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq1/l0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
