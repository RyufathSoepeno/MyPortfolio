.class public final La/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La/b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, La/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(La/b;)V
    .registers 3

    iget-object v0, p0, La/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/a;->b:Landroid/content/Context;

    invoke-interface {p1, v0}, La/b;->a(Landroid/content/Context;)V

    :cond_9
    iget-object v0, p0, La/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, La/a;->b:Landroid/content/Context;

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, La/a;->b:Landroid/content/Context;

    iget-object v0, p0, La/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b;

    invoke-interface {v1, p1}, La/b;->a(Landroid/content/Context;)V

    goto :goto_8

    :cond_18
    return-void
.end method
