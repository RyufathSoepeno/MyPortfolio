.class Ld/n$b;
.super Landroidx/core/view/k1;
.source "SourceFile"


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

    iput-object p1, p0, Ld/n$b;->a:Ld/n;

    invoke-direct {p0}, Landroidx/core/view/k1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Ld/n$b;->a:Ld/n;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/n;->y:Lh/h;

    iget-object p1, p1, Ld/n;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
