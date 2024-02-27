.class public final Ly0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;
.implements Lk0/a;


# instance fields
.field private a:Ly0/a;

.field private b:Ly0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk0/c;)V
    .registers 2

    invoke-virtual {p0, p1}, Ly0/c;->k(Lk0/c;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Ly0/c;->a:Ly0/a;

    if-nez v0, :cond_c

    const-string v0, "UrlLauncherPlugin"

    const-string v1, "urlLauncher was never set."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Ly0/c;->b:Ly0/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly0/b;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public f(Lj0/a$b;)V
    .registers 5

    new-instance v0, Ly0/b;

    invoke-virtual {p1}, Lj0/a$b;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly0/b;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Ly0/c;->b:Ly0/b;

    new-instance v1, Ly0/a;

    invoke-direct {v1, v0}, Ly0/a;-><init>(Ly0/b;)V

    iput-object v1, p0, Ly0/c;->a:Ly0/a;

    invoke-virtual {p1}, Lj0/a$b;->b()Ls0/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ly0/a;->f(Ls0/c;)V

    return-void
.end method

.method public h()V
    .registers 1

    invoke-virtual {p0}, Ly0/c;->b()V

    return-void
.end method

.method public i(Lj0/a$b;)V
    .registers 3

    iget-object p1, p0, Ly0/c;->a:Ly0/a;

    if-nez p1, :cond_c

    const-string p1, "UrlLauncherPlugin"

    const-string v0, "Already detached from the engine."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p1}, Ly0/a;->g()V

    const/4 p1, 0x0

    iput-object p1, p0, Ly0/c;->a:Ly0/a;

    iput-object p1, p0, Ly0/c;->b:Ly0/b;

    return-void
.end method

.method public k(Lk0/c;)V
    .registers 3

    iget-object v0, p0, Ly0/c;->a:Ly0/a;

    if-nez v0, :cond_c

    const-string p1, "UrlLauncherPlugin"

    const-string v0, "urlLauncher was never set."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Ly0/c;->b:Ly0/b;

    invoke-interface {p1}, Lk0/c;->f()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly0/b;->d(Landroid/app/Activity;)V

    return-void
.end method
