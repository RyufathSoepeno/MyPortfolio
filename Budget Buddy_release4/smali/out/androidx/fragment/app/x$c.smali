.class Landroidx/fragment/app/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/x;


# direct methods
.method constructor <init>(Landroidx/fragment/app/x;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/x$c;->a:Landroidx/fragment/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/x$c;->a:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->K(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/x$c;->a:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->L(Landroid/view/Menu;)V

    return-void
.end method

.method public c(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/x$c;->a:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/x;->D(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    return-void
.end method

.method public d(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/x$c;->a:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->P(Landroid/view/Menu;)Z

    return-void
.end method
