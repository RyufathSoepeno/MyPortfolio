.class Landroidx/fragment/app/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/e$b;->e:Landroidx/fragment/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Landroidx/fragment/app/e$b;->e:Landroidx/fragment/app/e;

    invoke-static {p1}, Landroidx/fragment/app/e;->c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroidx/fragment/app/e$b;->e:Landroidx/fragment/app/e;

    invoke-static {p1}, Landroidx/fragment/app/e;->c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/e;->onCancel(Landroid/content/DialogInterface;)V

    :cond_11
    return-void
.end method
