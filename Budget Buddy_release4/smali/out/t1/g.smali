.class final Lt1/g;
.super Lt1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final e:Lj1/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/p<",
            "Lt1/c<",
            "-TT;>;",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj1/p;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/p<",
            "-",
            "Lt1/c<",
            "-TT;>;-",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/a;-><init>()V

    iput-object p1, p0, Lt1/g;->e:Lj1/p;

    return-void
.end method


# virtual methods
.method public b(Lt1/c;Lc1/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/c<",
            "-TT;>;",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lt1/g;->e:Lj1/p;

    invoke-interface {v0, p1, p2}, Lj1/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ld1/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method
