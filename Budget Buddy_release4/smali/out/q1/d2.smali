.class public final Lq1/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq1/d2;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lq1/x0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/d2;

    invoke-direct {v0}, Lq1/d2;-><init>()V

    sput-object v0, Lq1/d2;->a:Lq1/d2;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lq1/d2;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq1/x0;
    .registers 3

    sget-object v0, Lq1/d2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq1/x0;

    if-nez v1, :cond_11

    invoke-static {}, Lq1/a1;->a()Lq1/x0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_11
    return-object v1
.end method

.method public final b()V
    .registers 3

    sget-object v0, Lq1/d2;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lq1/x0;)V
    .registers 3

    sget-object v0, Lq1/d2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
