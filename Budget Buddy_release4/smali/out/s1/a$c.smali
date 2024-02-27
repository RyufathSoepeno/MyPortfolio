.class final Ls1/a$c;
.super Lq1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final e:Ls1/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/o<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic f:Ls1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a;Ls1/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/o<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Ls1/a$c;->f:Ls1/a;

    invoke-direct {p0}, Lq1/e;-><init>()V

    iput-object p2, p0, Ls1/a$c;->e:Ls1/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p1, p0, Ls1/a$c;->e:Ls1/o;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Ls1/a$c;->f:Ls1/a;

    invoke-virtual {p1}, Ls1/a;->t()V

    :cond_d
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ls1/a$c;->a(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveReceiveOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a$c;->e:Ls1/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
