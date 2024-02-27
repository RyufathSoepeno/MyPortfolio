.class Ld/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/l1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/n;


# direct methods
.method constructor <init>(Ld/n;)V
    .registers 2

    iput-object p1, p0, Ld/n$c;->a:Ld/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Ld/n$c;->a:Ld/n;

    iget-object p1, p1, Ld/n;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
