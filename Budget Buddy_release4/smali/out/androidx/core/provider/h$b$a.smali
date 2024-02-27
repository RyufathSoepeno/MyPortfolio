.class Landroidx/core/provider/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/h$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/core/util/a;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Landroidx/core/provider/h$b;


# direct methods
.method constructor <init>(Landroidx/core/provider/h$b;Landroidx/core/util/a;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Landroidx/core/provider/h$b$a;->g:Landroidx/core/provider/h$b;

    iput-object p2, p0, Landroidx/core/provider/h$b$a;->e:Landroidx/core/util/a;

    iput-object p3, p0, Landroidx/core/provider/h$b$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/core/provider/h$b$a;->e:Landroidx/core/util/a;

    iget-object v1, p0, Landroidx/core/provider/h$b$a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
