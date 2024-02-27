.class Landroidx/core/view/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/f;

.field private b:Landroidx/lifecycle/g;


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/i$a;->a:Landroidx/lifecycle/f;

    iget-object v1, p0, Landroidx/core/view/i$a;->b:Landroidx/lifecycle/g;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/i$a;->b:Landroidx/lifecycle/g;

    return-void
.end method
