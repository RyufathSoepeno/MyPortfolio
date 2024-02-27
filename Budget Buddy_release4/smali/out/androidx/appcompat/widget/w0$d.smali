.class Landroidx/appcompat/widget/w0$d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/w0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w0$d;->a:Landroidx/appcompat/widget/w0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w0$d;->a:Landroidx/appcompat/widget/w0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/w0$d;->a:Landroidx/appcompat/widget/w0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->a()V

    :cond_d
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w0$d;->a:Landroidx/appcompat/widget/w0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->dismiss()V

    return-void
.end method
