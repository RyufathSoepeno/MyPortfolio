.class public Lj/a;
.super Lj/d;
.source "SourceFile"


# static fields
.field private static volatile c:Lj/a;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lj/d;

.field private b:Lj/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj/a$a;

    invoke-direct {v0}, Lj/a$a;-><init>()V

    sput-object v0, Lj/a;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lj/a$b;

    invoke-direct {v0}, Lj/a$b;-><init>()V

    sput-object v0, Lj/a;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lj/d;-><init>()V

    new-instance v0, Lj/c;

    invoke-direct {v0}, Lj/c;-><init>()V

    iput-object v0, p0, Lj/a;->b:Lj/d;

    iput-object v0, p0, Lj/a;->a:Lj/d;

    return-void
.end method

.method public static d()Lj/a;
    .registers 2

    sget-object v0, Lj/a;->c:Lj/a;

    if-eqz v0, :cond_7

    sget-object v0, Lj/a;->c:Lj/a;

    return-object v0

    :cond_7
    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lj/a;->c:Lj/a;

    if-nez v1, :cond_15

    new-instance v1, Lj/a;

    invoke-direct {v1}, Lj/a;-><init>()V

    sput-object v1, Lj/a;->c:Lj/a;

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Lj/a;->c:Lj/a;

    return-object v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lj/a;->a:Lj/d;

    invoke-virtual {v0, p1}, Lj/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lj/a;->a:Lj/d;

    invoke-virtual {v0}, Lj/d;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lj/a;->a:Lj/d;

    invoke-virtual {v0, p1}, Lj/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method
