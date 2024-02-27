.class final Lq1/k1;
.super Lq1/o1;
.source "SourceFile"


# static fields
.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked:I

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
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lq1/k1;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lq1/k1;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

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

    invoke-direct {p0}, Lq1/o1;-><init>()V

    iput-object p1, p0, Lq1/k1;->i:Lj1/l;

    const/4 p1, 0x0

    iput p1, p0, Lq1/k1;->_invoked:I

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq1/k1;->y(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public y(Ljava/lang/Throwable;)V
    .registers 5

    sget-object v0, Lq1/k1;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lq1/k1;->i:Lj1/l;

    invoke-interface {v0, p1}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method
