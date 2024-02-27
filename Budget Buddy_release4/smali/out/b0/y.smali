.class public final synthetic Lb0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ls0/i;

.field public final synthetic f:Ls0/j$d;

.field public final synthetic g:Lb0/i;


# direct methods
.method public synthetic constructor <init>(Ls0/i;Ls0/j$d;Lb0/i;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/y;->e:Ls0/i;

    iput-object p2, p0, Lb0/y;->f:Ls0/j$d;

    iput-object p3, p0, Lb0/y;->g:Lb0/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lb0/y;->e:Ls0/i;

    iget-object v1, p0, Lb0/y;->f:Ls0/j$d;

    iget-object v2, p0, Lb0/y;->g:Lb0/i;

    invoke-static {v0, v1, v2}, Lb0/c0;->c(Ls0/i;Ls0/j$d;Lb0/i;)V

    return-void
.end method
