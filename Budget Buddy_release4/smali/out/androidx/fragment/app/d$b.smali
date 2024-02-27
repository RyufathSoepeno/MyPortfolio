.class Landroidx/fragment/app/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/d;->f(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/util/List;

.field final synthetic f:Landroidx/fragment/app/m0$e;

.field final synthetic g:Landroidx/fragment/app/d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/d;Ljava/util/List;Landroidx/fragment/app/m0$e;)V
    .registers 4

    iput-object p1, p0, Landroidx/fragment/app/d$b;->g:Landroidx/fragment/app/d;

    iput-object p2, p0, Landroidx/fragment/app/d$b;->e:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/d$b;->f:Landroidx/fragment/app/m0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/d$b;->e:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/d$b;->f:Landroidx/fragment/app/m0$e;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/fragment/app/d$b;->e:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/d$b;->f:Landroidx/fragment/app/m0$e;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/fragment/app/d$b;->g:Landroidx/fragment/app/d;

    iget-object v1, p0, Landroidx/fragment/app/d$b;->f:Landroidx/fragment/app/m0$e;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->s(Landroidx/fragment/app/m0$e;)V

    :cond_18
    return-void
.end method
