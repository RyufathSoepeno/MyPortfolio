.class Landroidx/fragment/app/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/d;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/m0$e;Landroidx/fragment/app/m0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/m0$e;

.field final synthetic f:Landroidx/fragment/app/m0$e;

.field final synthetic g:Z

.field final synthetic h:Ll/a;

.field final synthetic i:Landroidx/fragment/app/d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/d;Landroidx/fragment/app/m0$e;Landroidx/fragment/app/m0$e;ZLl/a;)V
    .registers 6

    iput-object p1, p0, Landroidx/fragment/app/d$g;->i:Landroidx/fragment/app/d;

    iput-object p2, p0, Landroidx/fragment/app/d$g;->e:Landroidx/fragment/app/m0$e;

    iput-object p3, p0, Landroidx/fragment/app/d$g;->f:Landroidx/fragment/app/m0$e;

    iput-boolean p4, p0, Landroidx/fragment/app/d$g;->g:Z

    iput-object p5, p0, Landroidx/fragment/app/d$g;->h:Ll/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/d$g;->e:Landroidx/fragment/app/m0$e;

    invoke-virtual {v0}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/d$g;->f:Landroidx/fragment/app/m0$e;

    invoke-virtual {v1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/fragment/app/d$g;->g:Z

    iget-object v3, p0, Landroidx/fragment/app/d$g;->h:Ll/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLl/a;Z)V

    return-void
.end method
