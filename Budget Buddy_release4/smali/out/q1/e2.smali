.class public final Lq1/e2;
.super Lq1/d0;
.source "SourceFile"


# static fields
.field public static final f:Lq1/e2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/e2;

    invoke-direct {v0}, Lq1/e2;-><init>()V

    sput-object v0, Lq1/e2;->f:Lq1/e2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq1/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lc1/g;Ljava/lang/Runnable;)V
    .registers 3

    sget-object p2, Lq1/h2;->f:Lq1/h2$a;

    invoke-interface {p1, p2}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object p1

    check-cast p1, Lq1/h2;

    if-eqz p1, :cond_e

    const/4 p2, 0x1

    iput-boolean p2, p1, Lq1/h2;->e:Z

    return-void

    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lc1/g;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
