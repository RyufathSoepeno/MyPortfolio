.class Landroidx/fragment/app/x$b;
.super Landroidx/activity/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroidx/fragment/app/x;


# direct methods
.method constructor <init>(Landroidx/fragment/app/x;Z)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/x$b;->c:Landroidx/fragment/app/x;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/x$b;->c:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->E0()V

    return-void
.end method
