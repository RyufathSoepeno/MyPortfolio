.class Landroidx/lifecycle/LiveData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/LiveData$a;->e:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->e:Landroidx/lifecycle/LiveData;

    iget-object v0, v0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Landroidx/lifecycle/LiveData$a;->e:Landroidx/lifecycle/LiveData;

    iget-object v1, v1, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/LiveData$a;->e:Landroidx/lifecycle/LiveData;

    sget-object v3, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->e:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->k(Ljava/lang/Object;)V

    return-void

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
