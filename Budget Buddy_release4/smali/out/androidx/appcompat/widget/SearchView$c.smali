.class Landroidx/appcompat/widget/SearchView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$c;->e:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$c;->e:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    instance-of v1, v0, Landroidx/appcompat/widget/g1;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr/a;->a(Landroid/database/Cursor;)V

    :cond_c
    return-void
.end method
