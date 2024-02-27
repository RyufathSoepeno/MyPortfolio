.class Landroidx/appcompat/view/menu/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/g;->a(Landroidx/core/view/b;)Ln/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/view/menu/g;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/g;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/g$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/view/menu/g$a;->a:Landroidx/appcompat/view/menu/g;

    iget-object v0, p1, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->J(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method
