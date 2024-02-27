.class Landroidx/fragment/app/Fragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->r1(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/Fragment$6;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 3

    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Landroidx/fragment/app/Fragment$6;->a:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz p1, :cond_d

    invoke-static {p1}, Landroidx/fragment/app/Fragment$g;->a(Landroid/view/View;)V

    :cond_d
    return-void
.end method
