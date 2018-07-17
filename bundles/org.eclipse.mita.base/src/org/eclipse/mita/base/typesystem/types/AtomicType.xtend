package org.eclipse.mita.base.typesystem.types

import org.eclipse.mita.base.typesystem.types.AbstractType
import org.eclipse.emf.ecore.EObject

class AtomicType extends AbstractType {
	protected static Integer instanceCount = 0;
	
	new(EObject origin) {
		super(origin, '''atom_«instanceCount++»''');
	}
	
	override replace(AbstractType from, AbstractType with) {
		return this;
	}
	
	override getFreeVars() {
		return #[];
	}
	
}