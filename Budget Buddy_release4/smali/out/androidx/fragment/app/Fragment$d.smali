.class Landroidx/fragment/app/Fragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->A(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/m0;

.field final synthetic f:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m0;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/Fragment$d;->f:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$d;->e:Landroidx/fragment/app/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment$d;->e:Landroidx/fragment/app/m0;

    invoke-virtual {v0}, Landroidx/fragment/app/m0;->g()V

    return-void
.end method
