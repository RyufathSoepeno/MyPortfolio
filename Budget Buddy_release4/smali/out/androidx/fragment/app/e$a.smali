.class Landroidx/fragment/app/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroidx/fragment/app/e$a;->e:Landroidx/fragment/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/e$a;->e:Landroidx/fragment/app/e;

    invoke-static {v0}, Landroidx/fragment/app/e;->d2(Landroidx/fragment/app/e;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/e$a;->e:Landroidx/fragment/app/e;

    invoke-static {v1}, Landroidx/fragment/app/e;->c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
