.class public final synthetic Lb0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lb0/i;

.field public final synthetic f:Ld0/e;


# direct methods
.method public synthetic constructor <init>(Lb0/i;Ld0/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/g;->e:Lb0/i;

    iput-object p2, p0, Lb0/g;->f:Ld0/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lb0/g;->e:Lb0/i;

    iget-object v1, p0, Lb0/g;->f:Ld0/e;

    invoke-static {v0, v1}, Lb0/i;->f(Lb0/i;Ld0/e;)V

    return-void
.end method
