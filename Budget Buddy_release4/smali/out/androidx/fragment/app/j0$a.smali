.class Landroidx/fragment/app/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/j0;->r(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:I

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Landroidx/fragment/app/j0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j0;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    iput-object p1, p0, Landroidx/fragment/app/j0$a;->j:Landroidx/fragment/app/j0;

    iput p2, p0, Landroidx/fragment/app/j0$a;->e:I

    iput-object p3, p0, Landroidx/fragment/app/j0$a;->f:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/fragment/app/j0$a;->g:Ljava/util/ArrayList;

    iput-object p5, p0, Landroidx/fragment/app/j0$a;->h:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/j0$a;->i:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/fragment/app/j0$a;->e:I

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Landroidx/fragment/app/j0$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/j0$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/view/h0;->P(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/j0$a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/j0$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/view/h0;->P(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    return-void
.end method
